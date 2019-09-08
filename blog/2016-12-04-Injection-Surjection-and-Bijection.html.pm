#lang pollen
<div class="paragraph">
<p>If you have studied high-school algebra, you probably already know about injective, surjective, and bijective functions, just not by those names.</p>
</div>
<div class="paragraph">
<p>Imagine that I have a function <code>f</code>. Recall what it means for a function to be "1-to-1". This means that for every point in the input of <code>f</code>, the output is unique. To put it another way: <code>f(x1) = f(x2) &#8658; x1 = x2</code>, if two points have the same height on a graph, they are the same point. The technical way of saying this is that f is an injective function.</p>
</div>
<div class="paragraph">
<p>That was simple. What about surjective functions?</p>
</div>
<div class="paragraph">
<p>A surjective function, sometimes called an "onto" function, is one where there is an input corresponding to every possible output. For example, <code>f(x) = x + 3</code> (where <code>f</code> is a function on the real numbers) is a surjective function, because every real number has a <em>preimage</em> - an <code>x</code> such that <code>f(x)</code> is the number.</p>
</div>
<div class="paragraph">
<p>What about bijective functions?</p>
</div>
<div class="paragraph">
<p>A bijective function is just a function that is both injective and surjective.</p>
</div>
<div class="paragraph">
<p>Huh. So why is this important?</p>
</div>
<div class="paragraph">
<p>Well, if I have a bijective function <code>f</code> between a set <code>A</code> and a set <code>B</code>, then I can show that <code>A</code> and <code>B</code> have the same number of elements, because I know that every element in <code>A</code> corresponds to exactly one element in <code>B</code>. This is cool, but less useful for finite sets. It becomes really important for infinite sets - like the natural numbers.</p>
</div>
<div class="paragraph">
<p>The set of the natural numbers (<code>{1, 2, 3, 4, &#8230;&#8203;}</code>) has infinitely many items. But I can show that it has the same number of items as the set <code>B = {-5, -4, -3, -2, -1, 0, 1, 2, &#8230;&#8203;}</code>. My proof: <code>f(x) = x+6</code> is a bijective function from B to the natural numbers. Thus, the two sets have the same number of elements. We know it is bijective, because it is injective (no overlaps) and surjective (no gaps).</p>
</div>
<div class="paragraph">
<p>You can even go further, and show that the integers (<code>{&#8230;&#8203; -4, -3, -2, -1, 0, 1, 2, 3, &#8230;&#8203;}</code>) has the same number of elements as the natural numbers. You can also show that there is no bijection between the natural numbers and the real numbers - the real numbers are 'bigger' than the natural numbers. On the other hand, there is a bijection between <code>(0,1)</code> and the real numbers (<code>f(x) = 2/pi*arctan(x)</code>, if you&#8217;re curious) so <code>(0,1)</code> is just as 'big' as the real numbers.</p>
</div>
<div class="paragraph">
<p>There&#8217;s one more week of Math, so hold onto your seats for 7 more days before finals!</p>
</div>