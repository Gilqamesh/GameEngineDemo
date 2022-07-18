#include "VirtualMachines/StackMachine.hpp"
#include "Debug/Log.hpp"
#include "Debug/Exception.hpp"

namespace NAMESPACE
{

Operand::Operand(OpType type)
    : _type(type)
{
    switch (_type)
    {
        case OPERAND_BYTE:
            _size = sizeof(char);
            break ;
        case OPERAND_INT:
            _size = sizeof(int);
            break ;
        case OPERAND_FLOAT:
            _size = sizeof(float);
            break ;
        case OPERAND_STRING:
            _size = sizeof(char*);
            break ;
        default:
            throw Exception("Unexpected type in Operand constructor");
    }
}

StackMachine::StackMachine()
    : _memory(new char[UINT16_MAX]()), _currentOffset(0)
{

}

StackMachine::~StackMachine()
{
    delete _memory;
}

void StackMachine::interpret(const vector<char>& bytecode)
{
    for (unsigned int bytecodeIndex = 0;
        bytecodeIndex < bytecode.size();
        ++bytecodeIndex)
    {
        OpType opType = (OpType)bytecode[bytecodeIndex];
        switch (opType)
        {
            case OPERAND_BYTE:
            {
                ++bytecodeIndex;
                push(opType, bytecode[bytecodeIndex]);
                break ;
            }
            case OPERAND_INT:
            {
                ++bytecodeIndex;
                int res = 0;
                for (int i = 0; i < 4; ++i, ++bytecodeIndex)
                {
                    if (bytecodeIndex == bytecode.size())
                        throw Exception("Unexpected end of opType in bytecode, expected 4 bytes to convert to int, got: " + to_string(i));
                    res += (int)bytecode[bytecodeIndex] << (i * 8);
                }
                --bytecodeIndex;
                push(opType, res);
                break ;
            }
            case OPERAND_FLOAT:
            {
                ++bytecodeIndex;
                int res = 0;
                for (int i = 0; i < 4; ++i, ++bytecodeIndex)
                {
                    if (bytecodeIndex == bytecode.size())
                        throw Exception("Unexpected end of opType in bytecode, expected 4 bytes to convert to float, got: " + to_string(i));
                    res += (int)bytecode[bytecodeIndex] << (i * 8);
                }
                --bytecodeIndex;
                push(opType, *(float*)&res);
                break ;
            }
            case OPERAND_STRING:
            {
                ++bytecodeIndex;
                string res;
                while (bytecodeIndex < bytecode.size() && bytecode[bytecodeIndex] != '\0')
                {
                    res.push_back(bytecode[bytecodeIndex++]);
                    if (bytecodeIndex == bytecode.size())
                        throw Exception("String is not null terminated in bytecode, string so far: " + res);
                }
                push(opType, res);
                break ;
            }
            case OPERATOR_ADD:
            {
                Operand right = pop();
                Operand left = pop();
                if (left._type != right._type)
                    throw Exception("Operator '+' is only supported for similar type of operands");
                switch (left._type)
                {
                    case OPERAND_BYTE:
                        push(left._type, (char)(_memory[_currentOffset] + _memory[_currentOffset + 1]));
                        break ;
                    case OPERAND_INT:
                        push(left._type, *(int *)(_memory + _currentOffset) + *(int *)(_memory + _currentOffset + 4));
                        break ;
                    case OPERAND_FLOAT:
                        push(left._type, (*(float *)(_memory + _currentOffset) + *(float *)(_memory + _currentOffset + 4)));
                        break ;
                    default:
                        throw Exception("Type is not supported for '+' operator");
                }
                break ;
            }
            case OPERATOR_TOP:
            {
                cout << "Top value: ";
                Operand res = top();
                switch (res._type)
                {
                    case OPERAND_BYTE:
                        LOG((int)(_memory[_currentOffset - res._size]));
                        break ;
                    case OPERAND_INT:
                        LOG(*(int *)(_memory + _currentOffset - res._size));
                        break ;
                    case OPERAND_FLOAT:
                        LOG(*(float *)(_memory + _currentOffset - res._size));
                        break ;
                    case OPERAND_STRING:
                        LOG(*(string*)(_memory + _currentOffset - res._size));
                        break ;
                    default:
                        ASSERT(false);
                }
                break ;
            }
            default:
            {
                throw Exception("Unexpected opType in bytecode: " + to_string((int)opType));
            }
        }
    }
}

Operand StackMachine::pop(void)
{
    Operand res = top();
    _currentOffset -= res._size;

    _operandStack.pop();

    return (res);
}

Operand StackMachine::top(void)
{
    if (_operandStack.size() == 0)
        throw Exception("Stack is empty in StackMachine");
    Operand res = _operandStack.top();

    return (res);
}

}
