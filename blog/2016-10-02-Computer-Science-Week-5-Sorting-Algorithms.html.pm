#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week we did a practical study into different sorting algorithms and their time complexities. I really like sorting algorithms. I don&#8217;t know why. It was a good week.</p>
</div>
<div class="paragraph">
<p>Sorting algorithms take an array of items (<code>[10, 8, 5, 15, 23, 20]</code>) and turn it into a sorted array (<code>[5, 8, 10, 15, 20, 23]</code>). There are a bunch of different sorting algorithms. Some of them I have mentioned before (Bubble sort and Quicksort), so I&#8217;ll skip them for now. First up is Insertion sort, which is really cool.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_insertion_sort">Insertion Sort</h3>
<div class="paragraph">
<p>The idea is that you keep an array of the sorted items, and then insert each item in the unsorted list into it&#8217;s proper place. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Starting with [10, 8, 5, 15, 23, 20], we have the following steps:
[10, , , , , ]
[8, 10, , , , ]
[5, 8, 10, , , ]
[5, 8, 10, 15, , ]
[5, 8, 10, 15, 23, ]
[5, 8, 10, 15, 20, 23]</pre>
</div>
</div>
<div class="paragraph">
<p>You can try this out with a deck of cards. Look at each unsorted card, and slip it into the appropriate sorted spot. Insertion sort&#8217;s complexity is O(n^2) <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup> at worst, but it has a few interesting properties. Insertion sort is fast for small lists. For anything less than about 12 items, it is the fastest sort. Insertion sort is also faster when a list is almost sorted. In the best case, Insertion sort is O(n), which is the fastest possible.</p>
</div>
</div>
<div class="sect2">
<h3 id="_shell_sort">Shell Sort</h3>
<div class="paragraph">
<p>Shell sort uses the fact that Insertion sort works faster on almost-sorted lists to sort big lists more quickly. The idea behind Shell sort is that you pick different <em>strides</em>, and do an insertion sort on every <em>strideth</em> item. The first few passes get the list into roughly-sorted order, and then a final insertion sort is fast. Depending on how you pick your strides, Shell sort can have a bunch of different complexities. I don&#8217;t know enough (and the Professor glossed over it) to derive the complexity of Shell sort, but I can tell you that when your strides are powers of 2 minus 1 (<code>a_n = (a_(n-1) + 1) * 2 - 1 = n ^ 2 - 1</code>), the complexity is O(n^1.5).</p>
</div>
<div class="paragraph">
<p>Here&#8217;s an example, with strides 3, 2, and 1:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>[40, 88, 10, 8, 5, 15, 23, 20]

First, with stride = 3:
[8, 88, 10, 23, 5, 15, 40, 20]
 ^           ^          ^      switch

[8, 5, 10, 23, 20, 15, 40, 88]
    ^           ^           ^  switch

[8, 5, 10, 23, 20, 15, 40, 88]
        ^           ^          already sorted

Now stride = 2:
[8, 5, 10, 23, 20, 15, 40, 88]
 ^      ^       ^       ^      already sorted

[8, 5, 10, 15, 20, 23, 40, 88]
    ^       ^       ^       ^  switch

Now stride = 1:
(This is just insertion sort)
[5, 8, 10, 15, 20, 23, 40, 88]
 ^  ^   ^   ^   ^   ^   ^   ^</pre>
</div>
</div>
<div class="paragraph">
<p>Note that even though we had to do more steps, each step was faster because insertion sort is fast for small groups, and fast for almost-sorted groups.</p>
</div>
</div>
<div class="sect2">
<h3 id="_selection_sort">Selection Sort</h3>
<div class="paragraph">
<p>The final sorting algorithm we talked about was Selection sort, Bubble sort&#8217;s pretty cousin. With this sort, you maintain an array of already sorted items. Then, you search through the list for the biggest item, and tack that onto the sorted array.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>[8, 5, 10, 15, 23, 20]
[8, 5, 10, 15, 20 | 23]
[8, 5, 10, 15 | 20, 23]
[8, 5, 10 | 15, 20, 23]
[8, 5 | 10, 15, 20, 23]
[5 | 8, 10, 15, 20, 23]
[5, 8, 10, 15, 20, 23]</pre>
</div>
</div>
<div class="paragraph">
<p>This sorting algorithm is always O(n**2) - but it&#8217;s still faster than Bubble sort, which has the same complexity, because it performs fewer swaps of numbers.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all for this week. I hope you learned something, and I&#8217;m going to point once again to <a href="https://www.youtube.com/watch?v=kPRA0W1kECg">that video that visualizes sorting algorithms</a>. Now that you know how a few more work, it might be fun to check it out again.</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. O(something) means that as <code>n</code>, the number of items in the list, grows, the time the sorting algorithm takes is asymptotically proportional to <code>something</code>. For more information, see <a href="https://setupminimal.github.io/blog/2016/09/18/Computer-Science-Week-3-The-Worst-Possible-Time.html">my previous computer science post</a>.
</div>
</div>