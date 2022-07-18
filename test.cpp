#include <iostream>
#include <iomanip>
#include <stack>
#include <string>

using namespace std;

#define LOG(x) (cout << x << endl)

enum OperandType
{
    INT,
    FLOAT,
    STRING
};

struct Operand
{
    OperandType type;
    union
    {
        int valueInt;
        float valueFloat;
        char *valueString;
    };
};

struct Operator
{
    void (*f)(stack<Operand>& s) = NULL;
};

struct AddOperator : public Operator
{
    AddOperator()
    {
        f = [](stack<Operand>& s){
            Operand a = s.top();
            s.pop();
            Operand b = s.top();
            s.pop();
            LOG(a.valueFloat + b.valueInt);
        };
    }
};

template <typename T>
void myFunc(T val)
{
    LOG(sizeof(val));
    LOG(sizeof(T));
}

int main()
{
    unique_ptr<int> a;
    LOG(sizeof(a));
}
