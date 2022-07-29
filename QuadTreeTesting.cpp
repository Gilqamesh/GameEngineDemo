#include <iostream>
#include <unordered_map>
#include <unordered_set>

using namespace std;

#define LOG(x) (cout << x << endl)

template <typename... Args, typename enable_if<sizeof...(Args) == 3, bool>::type = true>
void fn(Args... x)
{
    LOG("sup");
}

int main()
{
    unordered_set<int> m;
    for (int i = 0; i < 10000; ++i)
        m.insert(i * 2);
    int max = 0;
    for (int i = 0; i < 10000; ++i)
    {
        if (m.bucket_size(i * 2) > max)
            max = m.bucket_size(i * 2);
    }
    LOG(m.bucket_count());
    LOG(max);
}