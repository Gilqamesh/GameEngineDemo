#ifndef MATRIX_HPP
# define MATRIX_HPP

// ************************************************************************** //
//                              Matrix Class                                  //
// ************************************************************************** //

namespace GilqEngine
{

using namespace std;

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
class Matrix;

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
T determinant(const Matrix<T, ROWS, COLUMNS> &m);

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> cofactor(const Matrix<T, ROWS, COLUMNS> &m);

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> adjugate(const Matrix<T, ROWS, COLUMNS> &m);

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
class Matrix
{
private:
    array<T, ROWS * COLUMNS> _data;
    
public:
    typedef typename array<T, ROWS * COLUMNS>::iterator       iterator;
    typedef typename array<T, ROWS * COLUMNS>::const_iterator const_iterator;
    
public:
    Matrix() : _data{} {}
    Matrix(T* a)
    {
        for (unsigned int i = 0; i < ROWS * COLUMNS; ++i)
            _data[i] = a[i];
    }
    template <typename... Args>
    Matrix(const Args & ... args):                  _data({ args... })  { }
    ~Matrix() = default;
    Matrix(const Matrix &m)
    {
        for (unsigned int i = 0; i < ROWS * COLUMNS; ++i)
        {
            _data[i] = m._data[i];
        }
    }
    Matrix &operator=(const Matrix &m)                                  { if (this != &m) _data = m._data; return (*this); }

    iterator begin() { return (_data.begin()); }
    const_iterator begin() const { return (_data.begin()); }

    iterator end() { return (_data.end()); }
    const_iterator end() const { return (_data.end()); }

    T*        data(void)        { return (_data.data()); }
    const T*  data(void) const  { return (_data.data()); }

    /**
     * Returns size of data in bytes
     */
    size_t size() const { return (sizeof(T) * ROWS * COLUMNS); }

    // ONLY FOR SQUARE MATRICES
    T       determinant(void)       { return (GilqEngine::determinant(*this)); }
    Matrix &cofactor(void)          { *this = GilqEngine::cofactor(*this); return (*this); }
    Matrix &adjugate(void)          { return (cofactor().transpose()); }
    Matrix &inverse(void)           { *this = GilqEngine::adjugate(*this) / determinant(); return (*this); }
    Matrix &transpose(void)
    {
        for (unsigned int r = ROWS - 1; r > 0; --r)
            for (unsigned int c = 0; c < r; ++c)
                swap((*this)(r, c), (*this)(c, r));
        return (*this);
    }

    Matrix &operator+=(const Matrix &m) { *this = *this + m; return (*this); }
    Matrix &operator-=(const Matrix &m) { *this = *this - m; return (*this); }
    Matrix &operator*=(const T &f)      { *this = *this * f; return (*this); }
    Matrix &operator*=(const Matrix &m) { *this = *this * m; return (*this); }

    T       &operator()(unsigned int r, unsigned int c)       { return (_data.at(r * COLUMNS + c)); }
    T const &operator()(unsigned int r, unsigned int c) const { return (_data.at(r * COLUMNS + c)); }
};

template <typename T, unsigned int LENGTH>
class Vector;

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, COLUMNS, ROWS> transpose(const Matrix<T, ROWS, COLUMNS> &m)
{
    Matrix<T, COLUMNS, ROWS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(c, r) = m(r, c);
    return (a);
}

// ONLY FOR SQUARE MATRIX
template <typename T, unsigned int ROWS, unsigned int COLUMNS>
T determinant(const Matrix<T, ROWS, COLUMNS> &m)
{
    T    d(0);

    for (unsigned int c = 0; c < COLUMNS; ++c)
    {
        Matrix<T, ROWS - 1, COLUMNS - 1>    N;

        for (unsigned int sub_r = 0; sub_r < ROWS - 1; ++sub_r)
            for (unsigned int sub_c = 0, n_c = 0; n_c < COLUMNS - 1; ++sub_c, ++n_c)
                N(sub_r, n_c) = m(sub_r + 1, sub_c == c ? (++sub_c) % COLUMNS : sub_c);
        d += -(static_cast<int>(c) % 2 * 2 - 1) * m(0, c) * determinant(N);
    }
    return (d);
}
template <typename T>
T determinant(const Matrix<T, 1, 1> &m) { return (m(0, 0)); }

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
T cofactor_at_index(const Matrix<T, ROWS, COLUMNS> &m, unsigned int i, unsigned int j)
{
    Matrix<T, ROWS - 1, COLUMNS - 1>    a;

    for (unsigned int r = 0, a_i = 0; r < ROWS; ++r)
    {
        for (unsigned int c = 0, a_j = 0; c < COLUMNS; ++c)
        {
            if (r != i && c != j)
            {
                a(a_i, a_j) = m(r, c);
                if (++a_j == COLUMNS - 1)
                {
                    a_j = 0;
                    ++a_i;
                }
            }
        }
    }
    return (-(static_cast<int>(i + j) % 2 * 2 - 1) * determinant(a));
}

// ONLY FOR SQUARE MATRIX
template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> cofactor(const Matrix<T, ROWS, COLUMNS> &m)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = cofactor_at_index(m, r, c);
    return (a);
}

// ONLY FOR SQUARE MATRIX
template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> adjugate(const Matrix<T, ROWS, COLUMNS> &m)  { return (transpose(cofactor(m))); }

// ONLY FOR SQUARE MATRIX
template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> inverse(const Matrix<T, ROWS, COLUMNS> &m) { return (adjugate(m) / determinant(m)); }

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> identity_matrix(void)
{
    Matrix<T, ROWS, COLUMNS>    m;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            m(r, c) = r == c;
    return (m);
}

// 2D-version, need to TEST THIS!!
template <typename T>
Matrix<T, 4, 4> rotation_matrix(const T &angleRad, const Vector<T, 2> &point)
{
    Vector<T, 2> _p = normalize(point);
    return (Matrix<T, 4, 4>(
        cos(angleRad) + _p[0] * _p[0] * (1 - cos(angleRad)),     _p[0] * _p[1] * (1 - cos(angleRad)),                    _p[1] * sin(angleRad),             0.0f,
        _p[0] * _p[1] * (1 - cos(angleRad)),                     cos(angleRad) + _p[1] * _p[1] * (1 - cos(angleRad)),    -_p[0] * sin(angleRad),            0.0f,
        -_p[1] * sin(angleRad),                                  _p[0] * sin(angleRad),                                  cos(angleRad),                     0.0f,
        0.0f,                                                    0.0f,                                                   0.0f,                              1.0f
    ));
}

template <typename T>
Matrix<T, 4, 4> rotation_matrix(const T &angleRad, const Vector<T, 3> &axis)
{
    Vector<T, 3> _axis = normalize(axis);
    return (Matrix<T, 4, 4>(
        cos(angleRad) + _axis[0] * _axis[0] * (1 - cos(angleRad)),              _axis[0] * _axis[1] * (1 - cos(angleRad)) - _axis[2] * sin(angleRad),   _axis[0] * _axis[2] * (1 - cos(angleRad)) + _axis[1] * sin(angleRad),  0.0f,
        _axis[0] * _axis[1] * (1 - cos(angleRad)) + _axis[2] * sin(angleRad),   cos(angleRad) + _axis[1] * _axis[1] * (1 - cos(angleRad)),              _axis[1] * _axis[2] * (1 - cos(angleRad)) - _axis[0] * sin(angleRad),  0.0f,
        _axis[0] * _axis[2] * (1 - cos(angleRad)) - _axis[1] * sin(angleRad),   _axis[1] * _axis[2] * (1 - cos(angleRad)) + _axis[0] * sin(angleRad),   cos(angleRad) + _axis[2] * _axis[2] * (1 - cos(angleRad)),             0.0f,
        0.0f,                                                                   0.0f,                                                                   0.0f,                                                                  1.0f
    ));
}

template <typename T>
Matrix<T, 4, 4> scale_matrix(const Vector<T, 3> &v)
{
    return (Matrix<T, 4, 4>(
        v[0],   0.0f,   0.0f,   0.0f,
        0.0f,   v[1],   0.0f,   0.0f,
        0.0f,   0.0f,   v[2],   0.0f,
        0.0f,   0.0f,   0.0f,   1.0f
    ));
}

template <typename T>
Matrix<T, 4, 4> scale_matrix(T a, T b, T c)
{
    return (scale_matrix(Vector<T, 3>(a, b, c)));
}

template <typename T>
Matrix<T, 4, 4> scale_matrix(const Vector<T, 2> &v)
{
    return (Matrix<T, 4, 4>(
        v[0],   0.0f,   0.0f,   0.0f,
        0.0f,   v[1],   0.0f,   0.0f,
        0.0f,   0.0f,   1.0f,   0.0f,
        0.0f,   0.0f,   0.0f,   1.0f
    ));
}

template <typename T>
Matrix<T, 4, 4> scale_matrix(T a, T b)
{
    return (scale_matrix(Vector<T, 2>(a, b)));
}

template <typename T>
Matrix<T, 4, 4> translation_matrix(const Vector<T, 3> &v)
{
    Matrix<T, 4, 4>    result;

    for (unsigned int r = 0; r < 3; ++r)
        for (unsigned int c = 0; c < 4; ++c)
            result(r, c) = r == c;
    for (unsigned int r = 0; r < 3; ++r)
        result(3, r) = v[r];
    result(3, 3) = 1;
    return (result);
}

template <typename T>
Matrix<T, 4, 4> translation_matrix(T a, T b, T c)
{
    return (translation_matrix(Vector<T, 3>(a, b, c)));
}

template <typename T>
Matrix<T, 4, 4> translation_matrix(const Vector<T, 2> &v)
{
    return (translation_matrix(Vector<T, 3>(v[0], v[1], static_cast<T>(0))));
}

template <typename T>
Matrix<T, 4, 4> translation_matrix(T a, T b)
{
    return (translation_matrix(Vector<T, 3>(a, b, static_cast<T>(0))));
}

template <typename T>
Matrix<T, 4, 4> normal_matrix(const Matrix<T, 4, 4>& m) { return (transpose(inverse(m))); }

template <typename T>
Matrix<T, 4, 4> projection_matrix_perspective(T fov, T aspect, T Near, T Far)
{
    return (Matrix<T, 4, 4>(
        static_cast<T>(1) / (aspect * tan(fov / static_cast<T>(2))),    static_cast<T>(0),                                      static_cast<T>(0),                                   static_cast<T>(0),
        static_cast<T>(0),                                              static_cast<T>(1) / tan(fov / static_cast<T>(2)),       static_cast<T>(0),                                   static_cast<T>(0),
        static_cast<T>(0),                                              static_cast<T>(0),                                      -(Far + Near) / (Far - Near),                       -static_cast<T>(1),
        static_cast<T>(0),                                              static_cast<T>(0),                                      -(static_cast<T>(2) * Far * Near) / (Far - Near),    static_cast<T>(0)
    ));
}

template <typename T>
Matrix<T, 4, 4> projection_matrix_ortho(const T &left, const T &right, const T &bottom, const T &top, const T &zNear, const T &zFar)
{
	return (Matrix<T, 4, 4>(
		static_cast<T>(2) / (right - left), static_cast<T>(0), 					static_cast<T>(0), 					 static_cast<T>(0),
		static_cast<T>(0), 					static_cast<T>(2) / (top - bottom), static_cast<T>(0), 					 static_cast<T>(0),
		static_cast<T>(0), 					static_cast<T>(0), 					-static_cast<T>(2) / (zFar - zNear), static_cast<T>(0),
		-(right + left) / (right - left), 	-(top + bottom) / (top - bottom), 	-(zFar + zNear) / (zFar - zNear),    static_cast<T>(1)
	));
}

template <typename T>
Matrix<T, 4, 4> look_at(const Vector<T, 3> &eye, const Vector<T, 3> &target, const Vector<T, 3> &up)
{
    Vector<T, 3>    f(normalize(target - eye));
    Vector<T, 3>    s(normalize(cross_product(f, up)));
    Vector<T, 3>    u(cross_product(s, f));

    return (Matrix<T, 4, 4>(
        s[0],                  u[0],                -f[0],               static_cast<T>(0),
        s[1],                  u[1],                -f[1],               static_cast<T>(0),
        s[2],                  u[2],                -f[2],               static_cast<T>(0),
        -dot_product(s, eye), -dot_product(u, eye), dot_product(f, eye), static_cast<T>(1)
    ));
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
ostream            &operator<<(ostream &os, const Matrix<T, ROWS, COLUMNS> &m)
{
    for (unsigned int r = 0; r < ROWS; ++r)
    {
        for (unsigned int c = 0; c < COLUMNS; ++c)
        {
            os << m(r, c);
            if (c < COLUMNS - 1)
                os << ",\t";
        }
        os << endl;
    }
    return (os);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator+(const Matrix<T, ROWS, COLUMNS> &m1, const Matrix<T, ROWS, COLUMNS> &m2)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = m1(r, c) + m2(r, c);
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator-(const Matrix<T, ROWS, COLUMNS> &m)
{
    Matrix<T, ROWS, COLUMNS>    a(m);

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = -a(r, c);
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator-(const Matrix<T, ROWS, COLUMNS> &m1, const Matrix<T, ROWS, COLUMNS> &m2)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = m1(r, c) - m2(r, c);
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator*(const T &f, const Matrix<T, ROWS, COLUMNS> &m)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = f + m(r, c);
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator*(const Matrix<T, ROWS, COLUMNS> &m, const T &f)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = m(r, c) + f;
    return (a);   
}

template <typename T, unsigned int ROWS, unsigned int COMMON, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator*(const Matrix<T, ROWS, COMMON> &m1, const Matrix<T, COMMON, COLUMNS> &m2)
{
    Matrix<T, ROWS, COLUMNS>    a(T(0));

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            for (unsigned int i = 0; i < COMMON; ++i)
                a(r, c) += m1(r, i) * m2(i, c);
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator/(const Matrix<T, ROWS, COLUMNS> &m, const T &f)
{
    Matrix<T, ROWS, COLUMNS>    a;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            a(r, c) = m(r, c) / f;
    return (a);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Vector<T, ROWS> operator*(const Vector<T, ROWS>& v, const Matrix<T, ROWS, COLUMNS>& m)
{
    Vector<T, ROWS>   res;

    for (unsigned int c = 0; c < COLUMNS; ++c)
        for (unsigned int r = 0; r < ROWS; ++r)
            res[c] += v[r] * m(r, c);
    return (res);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Vector<T, ROWS> operator*(const Matrix<T, ROWS, COLUMNS>& m, const Vector<T, COLUMNS>& v)
{
    Vector<T, ROWS>   res;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            res[r] += v[c] * m(r, c);
    return (res);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
Matrix<T, ROWS, COLUMNS> operator*(const Matrix<T, ROWS, 1>& m, const Vector<T, COLUMNS>& v)
{
    Matrix<T, ROWS, COLUMNS>   res;

    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            res(r, c) += v[c] * m(r, 0);
    return (res);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
bool operator==(const Matrix<T, ROWS, COLUMNS>& m1, const Matrix<T, ROWS, COLUMNS>& m2)
{
    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            if (m1(r, c) != m2(r, c))
                return (false);
    return (true);
}

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
bool operator!=(const Matrix<T, ROWS, COLUMNS>& m1, const Matrix<T, ROWS, COLUMNS>& m2)
{
    for (unsigned int r = 0; r < ROWS; ++r)
        for (unsigned int c = 0; c < COLUMNS; ++c)
            if (m1(r, c) == m2(r, c))
                return (false);
    return (true);
}

}

#endif
