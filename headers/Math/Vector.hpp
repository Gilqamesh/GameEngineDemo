#ifndef VECTOR_HPP
# define VECTOR_HPP

// ************************************************************************** //
//                              Vector Class                                  //
// ************************************************************************** //

# include "Math/Matrix.hpp"

namespace GilqEngine
{

using namespace std;

template <typename T, unsigned int ROWS, unsigned int COLUMNS>
class Matrix;

template <typename T, unsigned int LENGTH>
class Vector
{
Matrix<T, 1, LENGTH>    entries;
public:
    Vector() = default;
    Vector(T* v):                           entries(v)          { }
    explicit Vector(const Matrix<T, 1, LENGTH> &m):  entries(m)          { }
    template<typename... Args, typename enable_if<sizeof...(Args) == LENGTH, bool>::type = true>
    Vector(const Args & ... args):          entries(args...)    { }
    Vector(const Vector &v):                entries(v.entries)  { }
    ~Vector() = default;
    Vector &operator=(const Vector &v) { if (this != &v) entries = v.entries; return (*this); }

    T*       data(void)       { return (entries.data()); }
    const T* data(void) const { return (entries.data()); }

    size_t size() const { return (LENGTH); }

    Vector &operator+=(const Vector &v) { for (unsigned int i = 0; i < LENGTH; ++i) (*this)[i] = (*this)[i] + v[i]; return (*this); }
    Vector &operator-=(const Vector &v) { for (unsigned int i = 0; i < LENGTH; ++i) (*this)[i] = (*this)[i] - v[i]; return (*this); }
    Vector &operator*=(const T &a)      { for (unsigned int i = 0; i < LENGTH; ++i) (*this)[i] = (*this)[i] * a;    return (*this); }
    Vector &operator/=(const T &a)      { for (unsigned int i = 0; i < LENGTH; ++i) (*this)[i] = (*this)[i] / a;    return (*this); }

    T       &operator[](unsigned int index)       { return (entries(0, index)); }
    T const &operator[](unsigned int index) const { return (entries(0, index)); }
};

template <typename T, unsigned int LENGTH>
ostream &operator<<(ostream &os, const Vector<T, LENGTH> &v)
{
    for (unsigned int i = 0; i < LENGTH; ++i)
    {
        os << v[i];
        if (i != LENGTH - 1)
            os << ", ";
    }
    return (os);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> average(const vector<Vector<T, LENGTH>> &vectors)
{
    // using running average to avoid under/overflow
    Vector<T, LENGTH> result;
    for (unsigned int i = 0; i < vectors.size(); ++i)
    {
        result = (result * i + vectors[i]) / static_cast<T>(i + 1);
    }
    return (result);
}

template <typename T, unsigned int LENGTH>
T magnitude(const Vector<T, LENGTH> &v)
{
    T   r(0);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r += v[i] * v[i];
    return (sqrt(r));
}

// returns scalar of projecting vector v1 onto v2
template <typename T, unsigned int LENGTH>
T dot_product(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2)
{
    T   r(0);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r += v1[i] * v2[i];
    return (r);
}

template <typename T, unsigned int LENGTH>
T angle(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2) { return (dot_product(v1, v2) / magnitude(v1) / magnitude(v2)); }

template <typename T>
Vector<T, 3> cross_product(const Vector<T, 3> &v1, const Vector<T, 3> &v2) {
    return (Vector<T, 3>(v1[1] * v2[2] - v1[2] * v2[1], v1[2] * v2[0] - v1[0] * v2[2], v1[0] * v2[1] - v1[1] * v2[0]));
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> unit(const Vector<T, LENGTH> &v) { return (v / magnitude(v)); }

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> normalize(const Vector<T, LENGTH> &v) { return (v / magnitude(v)); }

template <typename T>
Vector<T, 3> rotate(const Vector<T, 3> &v, const T &angle, const Vector<T, 3> &axis)
{
    Vector<T, 3>    e(unit(axis));

    // Rodrigues' rotation formula
    return (Vector<T, 3>(cos(angle) * v + sin(angle) * cross_product(e, v) + (1 - cos(angle)) * dot_product(e, v) * e));
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> element_wise_multiply(const Vector<T, LENGTH>& v1, const Vector<T, LENGTH>& v2)
{
    Vector<T, LENGTH> result(v1);

    for (unsigned int i = 0; i < LENGTH; ++i)
    {
        result[i] *= v2[i];
    }

    return (result);
}

enum DIRECTION
{
    UP,
    RIGHT,
    DOWN,
    LEFT
};

template <typename T>
DIRECTION vectorDirection(Vector<T, 2> v)
{
    Vector<T, 2> directions[4] = {
        {static_cast<T>(0), static_cast<T>(1)},
        {static_cast<T>(1), static_cast<T>(0)},
        {static_cast<T>(0), static_cast<T>(-1)},
        {static_cast<T>(-1), static_cast<T>(0)}
    };

    T maxDotProduct = static_cast<T>(-1);
    DIRECTION direction;
    for (int i = 0; i < 4; ++i)
    {
        if (dot_product(v, directions[i]) > maxDotProduct)
        {
            direction = static_cast<DIRECTION>(i);
            maxDotProduct = dot_product(v, directions[i]);
        }
    }

    return (direction);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> element_wise_divide(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH>& v2)
{
    Vector<T, LENGTH>   r;

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = v1[i] / v2[i];
    return (r);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> operator/(const Vector<T, LENGTH> &v, const T &a)
{
    Vector<T, LENGTH>   r(v);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = r[i] / a;
    return (r);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> operator+(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2)
{
    Vector<T, LENGTH>   r(v1);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = r[i] + v2[i];
    return (r);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> operator-(const Vector<T, LENGTH> &v)
{
    Vector<T, LENGTH>   r(v);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = -r[i];
    return (r);
}

template <typename T, unsigned int LENGTH>
Vector<T, LENGTH> operator-(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2)
{
    Vector<T, LENGTH>   r(v1);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = r[i] - v2[i];
    return (r);
}

template <typename T, typename U, unsigned int LENGTH>
Vector<T, LENGTH> operator*(const Vector<T, LENGTH> &v, const U &a)
{
    Vector<T, LENGTH>   r(v);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = r[i] * a;
    return (r);
}

template <typename T, typename U, unsigned int LENGTH>
Vector<T, LENGTH> operator*(const U &a, const Vector<T, LENGTH> &v)
{
    Vector<T, LENGTH>   r(v);

    for (unsigned int i = 0; i < LENGTH; ++i)
        r[i] = r[i] * a;
    return (r);
}

template <typename T, unsigned int LENGTH>
bool operator==(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2)
{
    for (unsigned int i = 0; i < LENGTH; ++i)
        if (v1[i] != v2[i])
            return (false);
    return (true);
}

template <typename T, unsigned int LENGTH>
bool operator!=(const Vector<T, LENGTH> &v1, const Vector<T, LENGTH> &v2)
{
    for (unsigned int i = 0; i < LENGTH; ++i)
        if (v1[i] != v2[i])
            return (true);
    return (false);
}

}

#endif
