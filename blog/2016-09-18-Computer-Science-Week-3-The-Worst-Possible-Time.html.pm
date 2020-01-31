#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week was awesome! Which might seem to be in contravention of the title, but the title really <em>is</em> what we learned about.</p>
</div>
<div class="paragraph">
<p>So in Computer Science we deal a lot with algorithms: doing something in a certain way to produce a certain result. Computer Scientists wanted a way to compare different algorithms to see how long they take. This week we talked about how one compairs algorithms. Let&#8217;s look at two ways to sort a list as an example.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_bubble_sort">Bubble Sort</h3>
<div class="paragraph">
<p>This sorting method works by going back and forth across a list, and swapping adjacent pairs of items if they are out of place. This makes the items "bubble" to the top. Here&#8217;s an example.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>list = [11, 5, 2, 1]
After the first step: (5 is less than 11)
[5, 11, 2, 1]
2nd: (2 is less than 11)
[5, 2, 11, 1]
3rd: (1 is less than 11)
[5, 2, 1, 11]
4th: (2 is less than 5)
[2, 5, 1, 11]
5th: (1 is less than 5)
[2, 1, 5, 11]
6th: (1 is less than 2)
[1, 2, 5, 11]

Ta da! The list is in order!</pre>
</div>
</div>
<div class="paragraph">
<p>And here is how bubble sort is written in python:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def bubble_sort(alist):
    for i in range(len(alist) - 1):
        for j in range(len(alist) - i - 1):
            if alist[j] &gt; alist[j+1]:
               alist[j], alist[j+1] = alist[j+1], alist[j]
    return alist</pre>
</div>
</div>
<div class="paragraph">
<p>Let&#8217;s take a look at another method:</p>
</div>
</div>
<div class="sect2">
<h3 id="_quicksort">Quicksort</h3>
<div class="paragraph">
<p>Quicksort works by taking a list, separating it into pieces, sorting each of the pieces, and putting it back together. It&#8217;s easiest to think of quicksort like this:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>A list with one element is sorted</p>
</li>
<li>
<p>Two lists that are sorted, where one list has only smaller things, and one list has only bigger things get&#8217;s sorted by combining the lists.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>list = [11, 5, 12, 1, 3]

Step 1:
separate into [11, 12] and [5, 1, 3]
[11, 12] is sorted.
[5, 1, 3] is not sorted yet.

Step 2:
separate [5, 1, 3] into [5] and [1, 3]
[5] is sorted.
[1, 3] is sorted.

Finally:
[1, 3] + [5] + [11, 12] is [1, 3, 5, 11, 12]</pre>
</div>
</div>
<div class="paragraph">
<p>And here&#8217;s one way to write quicksort in python:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def quicksort(alist):
    if len(alist) &lt;= 1:
       return alist
    pivot = alist[0]
    alist = alist[1:]
    return quicksort(filter(lambda x: x &lt; pivot, alist)) + \
           [pivot] + \
           quicksort(filter(lambda x: x &gt;= pivot, alist))</pre>
</div>
</div>
<div class="paragraph">
<p>Now how do we go about comparing bubble sort to quicksort? What things about them do we want to compare? In class we talked about . . .</p>
</div>
</div>
<div class="sect2">
<h3 id="_time_complexity">Time Complexity</h3>
<div class="paragraph">
<p>So first of all, let&#8217;s talk about what we mean by 'time'. Different computers do different things at different speeds. Calculating the literal time an algorithm would take be difficult. Instead, we count the number of steps in the algorithm (roughly), as a function of the size of the input, <code>n</code>. This is called the algorithm&#8217;s time complexity.</p>
</div>
<div class="paragraph">
<p>Bubble sort:</p>
</div>
<div class="paragraph">
<p>Bubble sort goes over the whole list once for every item in the list, 'bubbling' it to the top. The number of comparisons and switches it makes is then the size of the list squared, <code>n^2</code>. It does this regardless of the contents of the list, so this is it&#8217;s worst-case time and it&#8217;s best-case time.</p>
</div>
<div class="paragraph">
<p>Quicksort:</p>
</div>
<div class="paragraph">
<p>Quicksort breaks the list into two pieces each time, sorts them, and puts it back together. So if it breaks the list in the worst possible way, into <code>[pivot]</code> and <code>[everything else]</code>, it also ends up going through the list <code>n^2</code> times - it breaks the list into <code>n</code> pieces, and then goes through the pieces each time, which also requires <code>n</code> steps - this is the same as bubble sort. On the other hand, if it breaks the list in the best possible way, the list splits evenly into 2 pieces, and so it only takes <code>n * log(n)</code> <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup> steps.</p>
</div>
<div class="paragraph">
<p>So if the list is already sorted, both quicksort and bubble sort take <code>n^2</code> steps. If the list is shuffled into a random order, quicksort takes (on average) <code>n * log(n)</code> steps, and bubble sort still takes <code>n^2</code> steps. It&#8217;s funny that quicksort is slower when the list is already sorted, but the computer can&#8217;t tell that it&#8217;s sorted without doing some amount of work that would slow it down when it&#8217;s not sorted.</p>
</div>
<div class="paragraph">
<p>There are other things about the algorithms you can compare (How much memory do they take? Can they work in parallel? How much power do they take? Do they need set-up time?), but time complexity - along with a bunch of examples - is all that we talked about this week. See you next week for more algorithmic complexity, and other things! One cool resource you might check out while waiting with bated breath to hear from me again is <a href="https://www.youtube.com/watch?v=kPRA0W1kECg">this video that visualizes sorting algorithms</a>.</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. That&#8217;s <code>log</code> base <code>2</code>, for those keeping score back home.
</div>
</div>