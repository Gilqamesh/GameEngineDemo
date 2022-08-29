#ifndef STACKMACHINE_HPP
#define STACKMACHINE_HPP

#include "pch.hpp"

namespace GilqEngine
{

    enum OpType
    {
        NONE,
        OPERAND_BYTE,
        OPERAND_INT,
        OPERAND_FLOAT,
        OPERAND_STRING,
        OPERATOR_ADD,
        OPERATOR_TOP
    };

    struct Operand
    {
        Operand() = default;
        Operand(OpType type);
        OpType _type;
        u8 _size; // in bytes
    };

    class StackMachine
    {
        char *_memory;
        stack<Operand> _operandStack;
        u16 _currentOffset;

    public:
        StackMachine();
        ~StackMachine();
        void interpret(const vector<char> &bytecode);

    private:
        template <typename T>
        void push(OpType type, const T &value)
        {
            Operand operand(type);
            if (_currentOffset > UINT16_MAX - operand._size)
                throw Exception("Stack is full in StackMachine");
            new (_memory + _currentOffset) T(value);
            _currentOffset += operand._size;

            _operandStack.push(operand);
        }
        Operand pop(void);
        Operand top(void);
    };

}

#endif
