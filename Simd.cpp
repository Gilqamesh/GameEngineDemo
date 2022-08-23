#include <iostream>
#include <immintrin.h>
#include <ctime>

using namespace std;

#define LOG(x) (cout << x << endl)

int main()
{
    repeat:
    // avx2 - supports 256-bit registers
    // avx512 - supports 512-bit registers
    // 64-bit "double" register data type
    // limited number of these registers (typically 8~),
    // so dont use too many, strive for locality
    __m256d _zr, _zi, _cr, _ci, _a, _b, _one, _two;
    __m256d _mask1; // mask used for compare instruction
                    // it has to be same type as the values being compare
    
    // 64-bit "integer" registers
    __m256i _n, _c, _iterations, _mask2;

    int iterations = 5;
    _iterations = _mm256_set1_epi64x(iterations);
    _c = _mm256_set1_epi64x(1);

    _a = _mm256_mul_pd(_zr, _zi); // a = zr * zi

    // to initialize a constant vector, like |2.0|2.0|2.0|2.0|
    _two = _mm256_set1_pd(2.0);

    // there are operations that do a combination of instructions, like mul + add
    _b = _mm256_fmadd_pd(_a, _two, _ci); // b = (zr * zi) * 2.0 + ci

    // with simd operations we need to simulate the compare operations
    // m1 = if (a < 2.0)
    // m1 = |if(a[3] < 4.0)|if(a[2] < 2.0)|if(a[1] < 2.0)|if(a[0] < 2.0)|
    // m1 = |111111...11111|000000...00000|111111...11111|000000...00000|
    _mask1 = _mm256_cmp_pd(_a, _two, _CMP_LT_OQ); // _CMP_LT_OQ - compare less than

    // m2 = if (iterations > n)
    // m2 = |00...00|11...11|11...11|00...00|
    _mask2 = _mm256_cmpgt_epi64(_iterations, _n);

    // m2 = m2 AND m1 = if (a < 2.0 && iterations > n)
    // m2 =    |00...00|11...11|11...11|00...00|
    // m1 = AND|11...11|00...00|11...11|00...00|
    // m2 =    |00...00|00...00|11...11|00...00|
    _mask2 = _mm256_and_si256(_mask2, _mm256_castpd_si256(_mask1));

    // c = |(int)1|(int)1|(int)1|(int)1|
    // c =     |00...01|00...01|00...01|00...01|
    // m2 = AND|00...00|00...00|11...11|00...00|
    // c =     |00...00|00...00|00...01|00...00| (Increment only applied to 'enabled' element)
    //
    // c = |(int)0|(int)0|(int)1|(int)0|

    _n = _mm256_add_epi64(_n, _c);

    // if ((zr * zr + zi + zi) < 2.0 && n < iterations) goto repeat
    // i.e. if our mask has any elements that are 1
    // |00...00|00...00|11...11|00...00|
    // |   0   |   0   |   1   |   0   | = 0b0010 = 2
    // so... if (2 > 0) goto repeat
    if (_mm256_movemask_pd(_mm256_castsi256_pd(_mask2)) > 0)
        goto repeat;
    LOG("Sup");
}
