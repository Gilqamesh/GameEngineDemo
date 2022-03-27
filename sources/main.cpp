#include "Applications/MacApplication.hpp"
#include "Debug/Log.hpp"

using namespace NAMESPACE;

int main()
{
    TRACE();
    try
    {
        MacApplication *application = new MacApplication();
        application->run();
        LOG("Yay it worked");
    }
    catch (std::exception &e)
    {
        Trace::getInstance()->printHistory(std::cout);
        LOG(e.what());
    }
}
