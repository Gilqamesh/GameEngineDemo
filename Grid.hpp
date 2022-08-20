#ifndef GRID_HPP
# define GRID_HPP

# include "Rectangle.hpp"

struct Grid
{

};

#endif

// Represents a node in the quadtree.
struct QuadNode
{
    // Points to the first child if this node is a branch or the first
    // element if this node is a leaf.
    int32_t first_child;

    // Stores the number of elements in the leaf or -1 if it this node is
    // not a leaf.
    int32_t count;
};

// Represents an element in the quadtree.
struct QuadElt
{
    // Stores the ID for the element (can be used to
    // refer to external data).
    int id;

    // Stores the rectangle for the element.
    int x1, y1, x2, y2;
};

// Represents an element node in the quadtree.
struct QuadEltNode
{
    // Points to the next element in the leaf node. A value of -1 
    // indicates the end of the list.
    int next;

    // Stores the element index.
    int element;
};

struct Quadtree
{
    // Stores all the elements in the quadtree.
    FreeList<QuadElt> elts;

    // Stores all the element nodes in the quadtree.
    FreeList<QuadEltNode> elt_nodes;

    // Stores all the nodes in the quadtree. The first node in this
    // sequence is always the root.
    std::vector<QuadNode> nodes;

    // Stores the quadtree extents.
    QuadCRect root_rect;

    // Stores the first free node in the quadtree to be reclaimed as 4
    // contiguous nodes at once. A value of -1 indicates that the free
    // list is empty, at which point we simply insert 4 nodes to the
    // back of the nodes array.
    int free_node;

    // Stores the maximum depth allowed for the quadtree.
    int max_depth;
};

static QuadNodeList find_leaves(const Quadtree& tree, const QuadNodeData& root, const int rect[4])
{
    QuadNodeList leaves, to_process;
    to_process.push_back(root);
    while (to_process.size() > 0)
    {
        const QuadNodeData nd = to_process.pop_back();

        // If this node is a leaf, insert it to the list.
        if (tree.nodes[nd.index].count != -1)
            leaves.push_back(nd);
        else
        {
            // Otherwise push the children that intersect the rectangle.
            const int mx = nd.crect[0], my = nd.crect[1];
            const int hx = nd.crect[2] >> 1, hy = nd.crect[3] >> 1;
            const int fc = tree.nodes[nd.index].first_child;
            const int l = mx-hx, t = my-hx, r = mx+hx, b = my+hy;

            if (rect[1] <= my)
            {
                if (rect[0] <= mx)
                    to_process.push_back(child_data(l,t, hx, hy, fc+0, nd.depth+1));
                if (rect[2] > mx)
                    to_process.push_back(child_data(r,t, hx, hy, fc+1, nd.depth+1));
            }
            if (rect[3] > my)
            {
                if (rect[0] <= mx)
                    to_process.push_back(child_data(l,b, hx, hy, fc+2, nd.depth+1));
                if (rect[2] > mx)
                    to_process.push_back(child_data(r,b, hx, hy, fc+3, nd.depth+1));
            }
        }
    }
    return leaves;
}

void Quadtree::cleanup()
{
    // Only process the root if it's not a leaf.
    SmallList<int> to_process;
    if (nodes[0].count == -1)
        to_process.push_back(0);

    while (to_process.size() > 0)
    {
        const int node_index = to_process.pop_back();
        QuadNode& node = nodes[node_index];

        // Loop through the children.
        int num_empty_leaves = 0;
        for (int j=0; j < 4; ++j)
        {
            const int child_index = node.first_child + j;
            const QuadNode& child = nodes[child_index];

            // Increment empty leaf count if the child is an empty 
            // leaf. Otherwise if the child is a branch, add it to
            // the stack to be processed in the next iteration.
            if (child.count == 0)
                ++num_empty_leaves;
            else if (child.count == -1)
                to_process.push_back(child_index);
        }

        // If all the children were empty leaves, remove them and 
        // make this node the new empty leaf.
        if (num_empty_leaves == 4)
        {
            // Push all 4 children to the free list.
            nodes[node.first_child].first_child = free_node;
            free_node = node.first_child;

            // Make this node the new empty leaf.
            node.first_child = -1;
            node.count = 0;
        }
    }
}
