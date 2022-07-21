#include "Simulators/BytecodeSimulator.hpp"
#include "Applications/MacApplication.hpp"
#include "Layers/ClearWindowLayer.hpp"
#include "Layers/BytecodeLayer.hpp"
#include "VirtualMachines/StackMachine.hpp"

namespace GilqEngine
{

void BytecodeSimulator::main()
{
    using namespace std;

    unique_ptr<MacApplication> application = make_unique<MacApplication>();

    ILayer *clearWindowLayer = new ClearWindowLayer();
    ILayer *bytecodeLayer = new BytecodeLayer(application->getWindow());

    application->pushLayer(clearWindowLayer);
    application->pushLayer(bytecodeLayer);

    application->run();

    delete clearWindowLayer;
    delete bytecodeLayer;

    // StackMachine vm;
    // vector<char> bytecode;

    // bytecode.push_back(OPERAND_FLOAT); // push float (4 bytes)
    // bytecode.push_back(50);
    // bytecode.push_back(-75);
    // bytecode.push_back(18);
    // bytecode.push_back(69);

    // bytecode.push_back(OPERATOR_TOP); // check value on top of the stack

    // bytecode.push_back(OPERAND_FLOAT); // push float (4 bytes)
    // bytecode.push_back(50);
    // bytecode.push_back(-75);
    // bytecode.push_back(18);
    // bytecode.push_back(69);

    // bytecode.push_back(OPERATOR_ADD); // add

    // bytecode.push_back(OPERATOR_TOP); // check top value

    // bytecode.push_back(OPERAND_STRING); // push c-string
    // bytecode.push_back(72);
    // bytecode.push_back(101);
    // bytecode.push_back(108);
    // bytecode.push_back(108);
    // bytecode.push_back(111);
    // bytecode.push_back(0);

    // bytecode.push_back(OPERATOR_TOP); // check top value

    // vm.interpret(bytecode);
}

}
