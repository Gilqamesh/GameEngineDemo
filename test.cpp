#include <iostream>
#include <vector>

# define LOG(x) (std::cout << (x) << std::endl)

int main()
{
    std::vector<int> a;
    LOG(sizeof(a));
    a.push_back(5);
    a.push_back(5);
    a.push_back(5);
    a.push_back(5);
    a.push_back(5);
    LOG(sizeof(a));
}