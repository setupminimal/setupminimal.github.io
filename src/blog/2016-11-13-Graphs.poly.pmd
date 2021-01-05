#lang pollen
= Graphs

This week in Computer Science, we talked about graphs. Remember linked lists and trees? They both had a common structure, which looks a bit like this:

----
+-------+
| value |
+-------+
| next/ |
| prev/ |
| left/ |
| right |
+-------+
----

That is, a value, and then a bunch of pointers showing where to go next. Both linked lists and trees are special cases of a structure called a _graph_. A graph doesn't put any constraints on the number of other nodes a node can point to. In general, graphs don't even require that all the nodes be pointed to by something. A graph is just a collection of nodes, and the edges that connect them.

These turn out to be useful for many things. Graphs can be used to represent:

 - Maps (I.E. roadmaps, or video-game levels)
 - Regular Expressions (with labeled edges)
 - Schedules (edges represent conflicts)
 - Mazes
 - Social Networks
 - Many, Many Other Things

Since graphs have such variety, there are some vocabulary terms used to describe different types of graph:

 . Connected Graph
   - You can get from one node to every other node. No nodes are left all by their lonesome.
 . Directed Graph
   - These graphs have pointers only in one direction.
 . Undirected Graph
   - Edges go both ways.
 . Acyclic Graph
   - The graph is arranged in such a way that you can't end up going around in circles - these graphs usually look like trees.
 . Cyclic Graph
   - A graph where you _can_ go around in circles.
 . Planar Graph
   - A graph that can be drawn on paper, without the edges crossing.

Okay, so once you have a graph, what can you do with it?

=== Search

Say that you have a graph representing a roadmap - the nodes are towns, and the edges are roads between them. If I want to find the shortest path between two towns, I can use one of the many graph searching algorithms to find the path. So far, we've only covered depth-first and breadth-first search in class, neither of which is guaranteed to give the shortest path, but they will give you _a_ path, so that's something.

Depth first and breadth first search both work in the same way:

1. Start at a node
2. Mark this node as visited
3. Add this node's unvisited neighbors to your list of things to visit

and then depth first search says:

- Now go to the last place you wrote down, and repeat.

where breadth first search says:

- Now go to the first place you wrote down, and repeat.

This results in depth-first search going off down a long path first, whereas breadth-first search uses a longer list, but searches one area completely before moving to the next area.

So what else can we do with graphs?

=== Coloring

Let's say that you have a graph representing a schedule. Nodes are events, and edges connect nodes that can't happen in the same time slot. Now mark the first node with a time. Now go through the nodes, and give each one the earliest time that one of their neighbors doesn't already have. Amazing! You now have a schedule for all of your events.

Graph coloring can also be used to, e.g., pick colors for a map so that no two adjacent countries share a color. Or you can use graph coloring to find clusters in a scatter-plot. Or to determine if a graph is planar.

Graphs are pretty cool. I believe that we will still be talking about them next week. Check in then for more graph-related fun!
