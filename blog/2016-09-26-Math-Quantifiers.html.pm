#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>Remember how we were talking about statements and open sentences? Open sentences are not true or false, but when you substitute a variable into them, they become statements, which are always true or false.</p>
</div>
<div class="paragraph">
<p>Quantifiers turn an open sentence into a statement.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_the_universal_quantifier">The Universal Quantifier</h3>
<div class="paragraph">
<p>In words, the universal quantifier takes the form of "For all" or "For every", and it works like this. Suppose we have an open sentence, <code>P(x)</code>, like, for example <code>x is a day of the week, where x is in {Tuesday, Turtles, President Obama, Jupiter, Saturday, DeMorgan&#8217;s Law}.</code> This is a perfectly reasonable open sentence. It&#8217;s not true or false, but rather it becomes a statement when you consider each possible value of x separately. What the universal quantifier does is turn it into this statement: <code>For every x in the domain <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup>, x is a day of the week`.</p>
</div>
<div class="paragraph">
<p>This is a statement, one that we can say definitely is false. Why? <code>Turtles</code> is not a day of the week. Here are some other statements that contain the universal quantifier:</p>
</div>
<div class="paragraph">
<p><code>For every real number x, x^2 &gt; -1</code> (This one is true)</p>
</div>
<div class="paragraph">
<p><code>For all American presidents, the president has been a giant lamprey</code> (This one is false)</p>
</div>
<div class="paragraph">
<p>What other quantifiers might exist, I hear you cry?</p>
</div>
</div>
<div class="sect2">
<h3 id="_the_existential_quantifier">The Existential Quantifier</h3>
<div class="paragraph">
<p>The existential quantifier says "There exists" or "There is a <em>_</em> such that". Using the same example <code>P(x)</code> as above, we could make a statement <code>There exists an x in {Tuesday, Turtles, President Obama, Jupiter, Saturday, DeMorgan&#8217;s Law} such that x is a day of the week.</code> This is true! There are in fact two such `x`s.</p>
</div>
<div class="paragraph">
<p>That is quantifiers in a nutshell. They form statements just like every other, so you can do things like <code>and</code> them, <code>or</code> them, or nest them inside each other, as in this example:</p>
</div>
<div class="paragraph">
<p><code>For every purpose, there exists a time for that purpose.</code> This is a universal quantifier wrapped around an existential quantifier wrapped around the statement <code>There is a time x for a purpose y.</code></p>
</div>
</div>
<div class="sect2">
<h3 id="_negation">Negation</h3>
<div class="paragraph">
<p>The last thing we talked about this week was how to correctly negate quantifiers. If I take a statement like <code>It is raining</code>, it is pretty clear that the negation is <code>It is not raining</code>. If I have a statement like <code>For all days in September, it is raining</code>, the opposite is <code>There exists a day in September when it is not raining.</code></p>
</div>
<div class="paragraph">
<p>When you negate the universal quantifier, it becomes an existential quantifier, and you negate the statement wrapped up inside. The domain never changes. Similarly, when you negate the existential quantifier, it becomes a universal quantifier, and you negate the statement inside, as shown here:</p>
</div>
<div class="paragraph">
<p><code>There is a dog such that the dog is purple</code> becomes <code>For all dogs, the dog is not purple</code>.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all! It was a pretty simple week. Next week, I expect us to continue talking about logic and statements. See you then!</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. The domain refers to the set of things that `x</code> could be. Remember that.
</div>
</div>