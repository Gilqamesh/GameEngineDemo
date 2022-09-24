#include "Tree.hpp"

Tree::Tree(AABB treeBound)
    : bound(treeBound)
{
    nodeAllocator.initializeNode(&root);
}

void Tree::insert(Rec rec)
{
    root.insert(rectangles.size(), rec, bound, this);
    rectangles.push_back(rec);
}

u32 Tree::update()
{
    return (root.update(bound, this));
}
