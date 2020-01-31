#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>In an unexpected and thrilling departure from the syllabus and our expectations, this week Math Proofs, our exciting new math course, covered Boolean logic.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_statements">Statements</h3>
<div class="paragraph">
<p>In math, especially abstract math, it&#8217;s fun to categorize things that one would usually take for granted. For example, the previous sentence is an example of a statement. A statement is a thing that is either true or false. In logic, you can combine statements to form compound statements the truth value of which depends on the constituent statements. I.E. <code>It is raining and I am in France</code> depends on <code>It is raining</code> and <code>I am in France</code>.</p>
</div>
<div class="paragraph">
<p>Here are the ways we talked about to combine statements:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>And</p>
</li>
<li>
<p>Or</p>
</li>
<li>
<p>Not</p>
</li>
<li>
<p>Implies (&#8594;)</p>
</li>
<li>
<p>The Bi-conditional (&lt;&#8594;)</p>
</li>
</ul>
</div>
<div class="paragraph">
<p><code>And</code> and <code>or</code> seem pretty straight forward. <code>Not</code> is also simple (It makes <code>I am in France</code> into <code>I am <em>not</em> in France</code>). But let&#8217;s use the idea of <code>and</code>, <code>or</code>, and <code>not</code> to demonstrate how truth tables work: (T is for True and F is for False)</p>
</div>
<div class="listingblock">
<div class="content">
<pre>P | Q | P and Q | P or Q | not P
--------------------------------
T | T |    T    |   T    |  F
T | F |    F    |   T    |  F
F | T |    F    |   T    |  T
F | F |    F    |   F    |  T</pre>
</div>
</div>
<div class="paragraph">
<p>The idea here is pretty simple. The table shows all the possible values of <code>P</code> and <code>Q</code>, which are statements, along with the result of using <code>and</code>, <code>or</code>, and <code>not</code>. If you don&#8217;t quite get it, go through the table and assure yourself that everything in the <code>P and Q</code> column matches your intuition of what <code>P and Q</code> should be.</p>
</div>
<div class="paragraph">
<p>This gives us a good way to demonstrate how implication and the bi-conditional work:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>P | Q | P -&gt; Q | P &lt;-&gt; Q
------------------------
T | T |   T    |    T
T | F |   F    |    F
F | T |   T    |    F
F | F |   T    |    T</pre>
</div>
</div>
<div class="paragraph">
<p>Implication is true, except when <code>P</code> is true and <code>Q</code> is false. This is because either <code>P</code> and <code>Q</code> are both true, and so <code>P implies Q</code> makes sense, or <code>P</code> is false, and so no matter what <code>Q</code> is, the problem is with <code>P</code>, and not your logic. My professor says this can be a bit difficult to grasp, so you might want to meditate on implication for a moment.</p>
</div>
<div class="paragraph">
<p>The bi-conditional is even easier. Either both <code>P</code> and <code>Q</code> are true, or they&#8217;re both false. Their fates are bound together.</p>
</div>
</div>
<div class="sect2">
<h3 id="_open_sentences">Open Sentences</h3>
<div class="paragraph">
<p>There&#8217;s only one thing left that we have yet to cover from last week, which is open sentences. An open sentence is like a statement with a variable, with a few rules. You have to say what that variable can be, and if you put the variable in the sentence, it must either be true or false.</p>
</div>
<div class="paragraph">
<p>Example!</p>
</div>
<div class="listingblock">
<div class="content">
<pre>P(f) : I am in f.
where f is in {France, Belgium, Taiwan, Trouble}.</pre>
</div>
</div>
<div class="paragraph">
<p><code>P(f)</code> is an open sentence, because if you substitute any of those things in place of f, you have a statement. That&#8217;s all we really covered with open sentences, but I&#8217;m told they&#8217;re important, so hold onto that knowledge.</p>
</div>
<div class="paragraph">
<p>I&#8217;ll be back again next week, folks, but I&#8217;m not sure where the syllabus will take us.</p>
</div>
</div>