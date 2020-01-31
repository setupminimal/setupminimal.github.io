#lang pollen
<div class="paragraph">
<p>Suppose that I wanted to prove that something is true for all natural numbers <code>n</code>. Since there are infinitely many such numbers, I can&#8217;t prove the statement individually for all the numbers, so what can I do?</p>
</div>
<div class="paragraph">
<p>The answer: Induction. A proof by induction works like this - prove that it&#8217;s true when <code>n = 1</code>, and then prove that <em>if</em> it&#8217;s true for <code>n</code>, it&#8217;s true for <code>n + 1</code>. Therefore it&#8217;s true for <code>1</code>, for <code>1+1</code>, for <code>1+1+1</code>, etc.</p>
</div>
<div class="paragraph">
<p>Let&#8217;s put actual numbers on this vague explanation. Let&#8217;s prove that <code>2^n &gt;= n^2</code> for all <code>n</code> in the natural numbers.</p>
</div>
<div class="paragraph">
<p>First, I&#8217;ll show that it&#8217;s true for <code>1</code>:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>2^1 &gt;= 1^2</code> because <code>2 &gt; 1</code>.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Now, I&#8217;ll show that if we assume <code>2^n &gt;= n^2</code> (where <code>n &gt;= 2</code>), we can prove <code>2^(n+1) &gt;= (n+1)^2</code></p>
</div>
<div class="ulist">
<ul>
<li>
<p>So <code>2^(n+1) = 2 * 2^n</code> and <code>(n+1)^2 = n^2 + 2n + 1</code>, so we are really trying to prove that <code>2 * 2^n &gt;= n^2 + 2n + 1</code>.</p>
</li>
<li>
<p>That&#8217;s equivalent to saying <code>2^n + 2^n &gt;= n^2 + (2n + 1)</code></p>
</li>
<li>
<p>We know that <code>2^n &gt;= 2n + 1</code> because this is true when <code>n = 2</code>, and the left hand side clearly grows faster than the right hand side (Yes! You can write this out as another formal proof by induction, but I&#8217;m skipping it for clarity).</p>
</li>
<li>
<p>Therefore <code>2^n + 2^n &gt;= n^2 + (2n + 1)</code>. This is equivalent to what we were trying to show.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>So now we&#8217;ve proven our original statement (<code>2^n &gt;= n^2</code>) true for all natural numbers by the principle of mathematical induction.</p>
</div>
<div class="paragraph">
<p>I could give you a bunch more examples, but the concept itself is pretty simple. First, prove a base case, usually <code>n = 1</code>. Then prove an inductive case, where you assume that it was true for the previous number, and prove it for the next number.</p>
</div>