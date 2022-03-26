# include "Debug/Log.hpp"
# include "Math/Matrix.hpp"

using namespace NAMESPACE;

int main()
{
    Matrix<int, 4, 4> m(identity_matrix<int, 4, 4>());
    Matrix<int, 4, 4> n = cofactor(m);
    Matrix<int, 4, 4> o = adjugate(m);
    int a = determinant(m);
    LOG(a << "\n" << m);
    LOG(n);
    LOG(o);
}
