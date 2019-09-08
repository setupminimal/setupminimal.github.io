#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week we talked about how to prove things about numbers that evenly divide other numbers.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_x_divides_y">X divides Y</h3>
<div class="paragraph">
<p><code>3 | 12</code> says "3 evenly divides 12". This is equivalent to saying <code>12 = 3k</code> where k is an integer. This turns out to be useful notation, because it lets you say things like <code>2 | n &#8594; n is even</code> or <code>2 ⍀ n &#8594; n is odd</code>. <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup> This clearly suggests that there are other classes of numbers that we don&#8217;t have convinient names for, like <code>3 | n</code> and <code>3 ⍀ n</code>. <code>3 ⍀ n</code> isn&#8217;t really equivalent to odd, however, because it is bigger than <code>3 | n</code>. Perhaps a better way to look at this could be seen by introducing some new notation.</p>
</div>
<div class="paragraph">
<p><code>n = 0 mod 3</code> <sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup> means <code>n = 3k + 0</code> where k is an integer. You might notice that this is equivallent to <code>3 | n</code>, and you would be right. This new syntax also allows us to say <code>n = 1 mod 3 = 3k + 1</code> or <code>n = 2 mod 3 = 3k + 1</code>. These are equivalent to <code>3 | (n - 1)</code> and <code>3 | (n - 2)</code>, respectively. This allows us to see that you can use division by <code>3</code> to split integers into 3 different classes.</p>
</div>
<div class="paragraph">
<p>This is true for all natural numbers: you can cut integers into <code>n</code> different pieces by looking at their value <code>mod n</code>. Arithmetic <code>mod n</code> is also very simple. For example, if <code>a = 3 mod 5</code> and <code>b = 1 mod 5</code>, <code>a + b = 4 mod 5</code>. If <code>c = 4 mod 5</code>, <code>a + c = 2 mod 5</code>. This is because <code>7 = 2 mod 5</code>. How do I know? Well, <code>5 | (7 - 2)</code> because <code>5 | 5</code>. Arithmetic modulo a number works by doing the operation as normal, and then 'wrapping' around the number. Here&#8217;s how to prove it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Assume:
  a = b mod n
  c = d mod n
Then:
  a = n*k + b
  c = n*r + d
  a + c = n*k + n*r + b + d
  a + c = n(k + r) + b + d
  Note that k + r is an integer.
  a + c = b + d mod n</pre>
</div>
</div>
<div class="paragraph">
<p>A similar proof can show that multiplication and so on still work too. Since arithmetic still works <code>mod n</code>, you can make a lot of cool proofs, or reuse a lot of your knowledge from ordinary arithmetic.</p>
</div>
<div class="paragraph">
<p>I hope to chach you all next week for more lovely math!</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. My apologies if the ⍀ symbol shows up as a box with numbers inside. Just picture an | with a \ through it, and you&#8217;ll get the idea.
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. Pronounced "enn equals zero modulo three"
</div>
</div>