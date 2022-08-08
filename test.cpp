#include <iostream>
#include <stack>

class MyStack : public std::stack<int>
{
public:
    void foo()
    {
        this->c.begin();
    }
};

class VectorIterator
{
    int *_ptr;
public:
    VectorIterator(int* ptr) : _ptr(ptr) {}

    VectorIterator &operator++()
    {
        ++_ptr;
        return (*this);
    }

    int operator*()
    {
        return (*_ptr);
    }

    bool operator!=(const VectorIterator& other)
    {
        return (!(_ptr == other._ptr));
    }
};

class Vector
{
    int arr[10];
public:
    typedef VectorIterator iterator;

    Vector()
    {
        arr[0] = 6;
        arr[1] = 19;
        for (int i = 2; i < 10; ++i)
            arr[i] = 1;
    }

    iterator begin() { return (VectorIterator(arr)); }
    iterator end()   { return (VectorIterator(arr + 10)); }

};

using namespace std;

int main()
{
    Vector a;
    Vector::iterator it = a.begin();


    cout << *it << endl;
    ++it;
    cout << *it << endl;

    while (it != a.end())
    {
        cout << *it << endl;
        ++it;
    }
}
