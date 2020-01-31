#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>So I&#8217;m a Computer Science major, which means that I get to do a lot of proving things.</p>
</div>
<div class="paragraph">
<p>"Professor! I think this algorithm runs in O(n log n) time, not O(n ** 2) time if you do this!"</p>
</div>
<div class="paragraph">
<p>"Oh yeah? Prove it." <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup></p>
</div>
<div class="paragraph">
<p>So the next required mathematics course for CS majors is Math Proofs - not calculus, which I thought I would be in. <sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup></p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_set_theory">Set Theory</h3>
<div class="paragraph">
<p>Most proofs are, apparently, based on Set Theory - the study of sets of things.</p>
</div>
<div class="paragraph">
<p>For example, if I say <code>X = {1, 2, 3}</code>, <code>X</code> is a set containing <code>1</code>, <code>2</code>, and <code>3</code>. Note that this is order-independent, so <code>{1, 2, 3} = {3, 2, 1} = {2, 3, 1}</code></p>
</div>
<div class="paragraph">
<p>Like with numbers, there are a few things that you can do with sets: you can make a big set from all the things in smaller sets; you can make a smaller set using only the things that are in a whole group of bigger sets; you can ask if something is in a set; you can ask if all the somethings in a set are in another set, too.</p>
</div>
<div class="paragraph">
<p>You can have sets with infinitely many things in them! But that would be tiresome to write out, so you can write them using '. . .'s, like this: <code>{1, 3, 5, . . . }</code>, or by using a condition, like this: <code>{x : x is a positive odd number}</code> (This reads as "The set of all x (where/such that) x is a positive odd number.").</p>
</div>
</div>
<div class="sect2">
<h3 id="_practice">Practice</h3>
<div class="paragraph">
<p>The first thing that you can do with sets is unify them. If I take the union of <code>{1, 2, 3}</code> and <code>{3, 4, 5}</code>, the result is the set that has any element that is is either of the two sets: <code>{1, 2, 3, 4, 5}</code>. This is written as <code>{1, 2, 3} U {3, 4, 5} = {1, 2, 3, 4, 5}</code>.</p>
</div>
<div class="paragraph">
<p>The second thing you can do is intersect them. If I take the intersection of <code>{1, 2, 3}</code> and <code>{3, 4, 5}</code>, the result is the set that has elements that appear in both of the two sets: <code>{3}</code>. This is written as <code>{1, 2, 3} ∩ {3, 4, 5} = {3}</code>.</p>
</div>
<div class="paragraph">
<p>You can ask "Is <code>3</code> in <code>{1, 3, 5, . . . }</code>?". This is written like this: <code>3 ∈ {1, 3, 5, . . . }</code>, which is true. This is like saying <code>8 = 8</code>; it&#8217;s a true statement. You can also say something like <code>x ∈ {1, 3, 5, . . .}</code>, which is just telling you something about <code>x</code>. <code>x</code> is in that set.</p>
</div>
<div class="paragraph">
<p>There&#8217;s other stuff that you can do with sets, but I&#8217;m frankly figuring out how to type it for this blog. I edit this blog as plain text, and then the formatting gets applied. If I want to show you proper mathematical notation, I have to figure out how to make my post-processor change certain text into the correct symbols.</p>
</div>
<div class="paragraph">
<p>I&#8217;m still playing a little bit of catch up in this course and with this summary, but I will have more for you next week. In the mean time, there are plenty of resources you can check out if sets really get your blood boiling. I actually recommend <a href="https://wikipedia.org">Wikipedia</a>, because the basic math-related articles are usually really precise and clear. If they&#8217;re not clear enough for you, or if you just want to wait to here my stunning take on the topic, just wait until it&#8217;s covered in class, and I&#8217;ll summarize it for you!</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. This is a dramatization. Nothing like this has ever happened to me, and I doubt a professor would actually say that.
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. I&#8217;m only a little disappointed. I really like calculus.
</div>
</div>