#ifndef FIRST_HPP
# define FIRST_HPP

# include "Interfaces/ILayer.hpp"
# include "Applications/MacApplication.hpp"

namespace NAMESPACE
{

class First : public ILayer
{
MacApplication *application;
public:
    First(MacApplication *macApplication);
    virtual void onAttach() override;
    virtual void onDetach() override;
    virtual void onEvent(IEvent &e) override;
    virtual void onUpdate(float deltaTime) override;
    virtual void onRender() override;
};

}

#endif
