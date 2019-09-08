#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>As you may recall, I have a work-study program at the <a href="https://iol.unh.edu">UNH-IOL</a>. In the course of my duties, I was recently asked to write a series of tests for the test tool that my consortium uses. Things were going swimmingly, until I ran into an issue that really drove home something that should be learned quite early on when one is learning programming:</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_variables_are_references">Variables are References</h3>
<div class="paragraph">
<p>If you took High-school Algebra, you are familliar with the concept of a variable. Something like <code><em>x</em></code> in the expression <code><em>x = 5</em></code>. In most programming languages <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup> this doesn&#8217;t do what you&#8217;re familiar with from mathematical notation.</p>
</div>
<div class="paragraph">
<p><code><em>x = 5</em></code> creates a box called <code><em>x</em></code>, and puts something in it. In some languages, it may put a <code><em>5</em></code> directly in the box, but in some lanugages it may put a number (called a pointer) in the box that represents the location of <code><em>5</em></code>. If I later say <code><em>x = 42</em></code>, it updates the something in the box to be or point to <code><em>42</em></code>. This clearly breaks the idea that we expect from math, that <code><em>x</em></code> maintains its value.</p>
</div>
<div class="paragraph">
<p>If you aren&#8217;t familiar with what the particular language you are using does, then it is easy to become confused about what exactly <code><em>x</em></code> <em>means</em>. If you use <code><em>x</em></code> as something that can&#8217;t change, or as directly holding the value, or as a pointer, and that&#8217;s not what your language means, your program may not do what you think it does. This happened to me just recently - despite my years of writing in this particular programming language.</p>
</div>
</div>
<div class="sect2">
<h3 id="_what_i_did">What I did</h3>
<div class="paragraph">
<p>I was working on some code that looked like this <sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup> <sup class="footnote">[<a id="_footnoteref_3" class="footnote" href="#_footnotedef_3" title="View footnote.">3</a>]</sup>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>x = new Foo()

setFavoriteColor(x, "Blue")

goDoSomethingWhileIKeepGoing(x)

setFavoriteColor(x, "Yellow")

goDoSomethingElse(x)</pre>
</div>
</div>
<div class="paragraph">
<p>The problem with this was that <code>goDoSomethingWhileIKeepGoing</code> kept doing things in the background, and that it would suddenly change from using a favorite color of "Blue" to a favorite color of "Yellow".</p>
</div>
<div class="paragraph">
<p>The language I was using (Java) stores pointers instead of actual items when you make a new variable (mostly; it&#8217;s kind of ugly). When I changed the favorite color of <code><em>x</em></code>, I changed it for the one <code><em>Foo</em></code> object that both functions were using. Because of this, the color suddenly changed in <code>goDoSomethingWhileIKeepGoing</code>, even though the change was made after it was initially called.</p>
</div>
</div>
<div class="sect2">
<h3 id="_so_what">So What?</h3>
<div class="paragraph">
<p>Yes, this is a sad story, but what does it actually mean for you?</p>
</div>
<div class="paragraph">
<p>You could take several lessons from it, if you were so inclined. For example, that you should always take care to know your tools before you use them. The lesson that I want to highlight, however, is that the real world is complicated, and abstractions are leaky.</p>
</div>
<div class="paragraph">
<p>Because I am going to summarize my Computer Science classes for you here on this blog, I am going to be talking a lot about the abstract. Big, magnificent proofs, ivory tower-dwelling concepts, and really cool, but impractical, ideas. What we should strive to remember, however, is that the real world is messy, and that computers mostly don&#8217;t work like that.</p>
</div>
<div class="paragraph">
<p>Computers are made out of transisters on silicon - carefully organized sand. They don&#8217;t have infinite time. They don&#8217;t have infinite storage. They don&#8217;t have infinite power. They represent everything as numbers, true, but the format for those numbers is ad-hoc, designed over decades by people who mostly were learning it as they went along.</p>
</div>
<div class="paragraph">
<p>When people design programming languages, they do it with real applications and limitations in mind. No programming language that anyone would actually use would or could be perfect.</p>
</div>
<div class="paragraph">
<p>So we should remember to stay grounded - when actually making actual things, it will never quite be like the beautiful elegance we expect from Computer Science.</p>
</div>
<div class="paragraph">
<p>Sorry for the delay on this post - I expect to have something for you next week, but it&#8217;s a little hectic at work, so it may be slightly late. Anyhow, have a nice week.</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. There are a lot of different languages that do things differently. Each language is a different way of writing down an algorithm - check out my introductory post on <a href="https://setupminimal.github.io/blog/2016/07/20/Introduction-to-Programming.html">Programming</a>
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. In Pseudocode, because teaching Java Syntax is not what this post is about. Go try out <a href="https://khanacademy.com">Khan Academy</a>
</div>
<div class="footnote" id="_footnotedef_3">
<a href="#_footnoteref_3">3</a>. Also, this code has been edited down for simplicity - it wasn&#8217;t really like this.
</div>
</div>