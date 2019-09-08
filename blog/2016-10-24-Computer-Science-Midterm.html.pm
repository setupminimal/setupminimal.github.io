#lang pollen
<div class="paragraph">
<p>Guess what!</p>
</div>
<div class="paragraph">
<p>Surprising Midterm!</p>
</div>
<div class="paragraph">
<p>Quick! What is the time complexity of this algorithm, and what is it called?:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def mystery(a_list):
    for i in range(len(a_list)):
        for j in range(1, i):
            if a_list[j-1] &gt; a_list[j]:
                a_list[j-1], a_list[j] = a_list[j], a_list[j-1]
    return a_list</pre>
</div>
</div>
<div class="paragraph">
<p>Answer: This algorithm is <code>O(n^2)</code> with respect to the length of <code>a_list</code>, and it&#8217;s called bubble sort.</p>
</div>
<div class="paragraph">
<p>Explanation: Since the algorithm seems to resolve around that comparison in the center, we can make a formula showing how many times that comparison happens. <code>T(n) = n(n - 1)/2</code> happens to be that formula. Why? Because the outer loop goes <code>n</code> times, and the inner loop goes <code>(n - 1)/2</code> times on average. If we multiply everything out, we get <code>T(n) = 1/2n^2 - 1/2n</code>, which is on the order of <code>n^2</code>, so the complexity is <code>O(n^2)</code>. As for how to remember it&#8217;s name, the algorithm goes through the list a bunch, and swaps adjacent items. That&#8217;s what the longest line is doing. This makes items kind of 'bubble' to the top of the list.</p>
</div>
<div class="paragraph">
<p>Next! What is a doubly-linked list?</p>
</div>
<div class="paragraph">
<p>Answer: It&#8217;s a list where each 'cell' of the list contains pointers to the next item, and to the previous item, making it possible to traverse the list in both directions.</p>
</div>
<div class="paragraph">
<p>Finally! Why is this post written in such a staccato style?</p>
</div>
<div class="paragraph">
<p>Answer: It matches the way my midterm was structured, and it&#8217;s actually really fun to write rapid-fire responses to myself.</p>
</div>
<div class="paragraph">
<p>Postscript! Was that all that was covered on the midterm?</p>
</div>
<div class="paragraph">
<p>Answer: No! We were also asked to step through different sorting algorithms, but I don&#8217;t want to torture my readers with that.</p>
</div>
<div class="paragraph">
<p>I hope to see you all next week, for another death-defying computer science class!</p>
</div>