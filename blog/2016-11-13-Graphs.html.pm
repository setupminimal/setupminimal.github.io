#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week in Computer Science, we talked about graphs. Remember linked lists and trees? They both had a common structure, which looks a bit like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>+-------+
| value |
+-------+
| next/ |
| prev/ |
| left/ |
| right |
+-------+</pre>
</div>
</div>
<div class="paragraph">
<p>That is, a value, and then a bunch of pointers showing where to go next. Both linked lists and trees are special cases of a structure called a <em>graph</em>. A graph doesn&#8217;t put any constraints on the number of other nodes a node can point to. In general, graphs don&#8217;t even require that all the nodes be pointed to by something. A graph is just a collection of nodes, and the edges that connect them.</p>
</div>
<div class="paragraph">
<p>These turn out to be useful for many things. Graphs can be used to represent:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Maps (I.E. roadmaps, or video-game levels)</p>
</li>
<li>
<p>Regular Expressions (with labeled edges)</p>
</li>
<li>
<p>Schedules (edges represent conflicts)</p>
</li>
<li>
<p>Mazes</p>
</li>
<li>
<p>Social Networks</p>
</li>
<li>
<p>Many, Many Other Things</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Since graphs have such variety, there are some vocabulary terms used to describe different types of graph:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Connected Graph</p>
<div class="ulist">
<ul>
<li>
<p>You can get from one node to every other node. No nodes are left all by their lonesome.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Directed Graph</p>
<div class="ulist">
<ul>
<li>
<p>These graphs have pointers only in one direction.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Undirected Graph</p>
<div class="ulist">
<ul>
<li>
<p>Edges go both ways.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Acyclic Graph</p>
<div class="ulist">
<ul>
<li>
<p>The graph is arranged in such a way that you can&#8217;t end up going around in circles - these graphs usually look like trees.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Cyclic Graph</p>
<div class="ulist">
<ul>
<li>
<p>A graph where you <em>can</em> go around in circles.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Planar Graph</p>
<div class="ulist">
<ul>
<li>
<p>A graph that can be drawn on paper, without the edges crossing.</p>
</li>
</ul>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<p>Okay, so once you have a graph, what can you do with it?</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_search">Search</h3>
<div class="paragraph">
<p>Say that you have a graph representing a roadmap - the nodes are towns, and the edges are roads between them. If I want to find the shortest path between two towns, I can use one of the many graph searching algorithms to find the path. So far, we&#8217;ve only covered depth-first and breadth-first search in class, neither of which is guaranteed to give the shortest path, but they will give you <em>a</em> path, so that&#8217;s something.</p>
</div>
<div class="paragraph">
<p>Depth first and breadth first search both work in the same way:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Start at a node</p>
</li>
<li>
<p>Mark this node as visited</p>
</li>
<li>
<p>Add this node&#8217;s unvisited neighbors to your list of things to visit</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>and then depth first search says:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Now go to the last place you wrote down, and repeat.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>where breadth first search says:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Now go to the first place you wrote down, and repeat.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>This results in depth-first search going off down a long path first, whereas breadth-first search uses a longer list, but searches one area completely before moving to the next area.</p>
</div>
<div class="paragraph">
<p>So what else can we do with graphs?</p>
</div>
</div>
<div class="sect2">
<h3 id="_coloring">Coloring</h3>
<div class="paragraph">
<p>Let&#8217;s say that you have a graph representing a schedule. Nodes are events, and edges connect nodes that can&#8217;t happen in the same time slot. Now mark the first node with a time. Now go through the nodes, and give each one the earliest time that one of their neighbors doesn&#8217;t already have. Amazing! You now have a schedule for all of your events.</p>
</div>
<div class="paragraph">
<p>Graph coloring can also be used to, e.g., pick colors for a map so that no two adjacent countries share a color. Or you can use graph coloring to find clusters in a scatter-plot. Or to determine if a graph is planar.</p>
</div>
<div class="paragraph">
<p>Graphs are pretty cool. I believe that we will still be talking about them next week. Check in then for more graph-related fun!</p>
</div>
</div>