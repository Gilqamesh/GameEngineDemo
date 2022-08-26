#ifndef TREE_HPP
# define TREE_HPP

# include "NodeAllocator.hpp"

struct Tree
{
    vector<Rec> rectangles;
    AABB bound;
    // LeafHashAllocator leafHashAllocator;
    NodeListAllocator nodeListAllocator;
    NodeAllocator nodeAllocator;
    Node root;

    Tree(AABB treeBound);

    void insert(Rec rec);

    u32 update();
};

void foo(void)
{
    cout << "hello" << endl;
}

#endif
