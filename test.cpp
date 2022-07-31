#include <iostream>
#include <unordered_set>
#include <vector>
#include <ctime>

using namespace std;

#define LOG(x) (cout << x << endl)

int main()
{
    unordered_set<int> m;
    vector<int> v;
    int nOfInsertions = 1000000;
    for (int i = 0; i < nOfInsertions; ++i)
    {
        m.insert(i);
        v.push_back(i);
    }
    time_t m_begin = clock();
    for (auto i : m)
    {
        int a = i + 1;
    }
    LOG((clock() - m_begin) / (float)CLOCKS_PER_SEC << "s");
    
    m_begin = clock();
    for (auto i : v)
    {
        int a = i + 1;
    }
    LOG((clock() - m_begin) / (float)CLOCKS_PER_SEC << "s");
}
