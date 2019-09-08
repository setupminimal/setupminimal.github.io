#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>Programming is one of the topics dear to my heart. I am, after all, going to college to pursue a degree in Computer Science. Consequently, Programming is going to come up a lot both in the articles I write over the summer about my job at the <a href="https://iol.unh.edu">UNH-IOL</a>, and in the articles I write about Introduction to Computer Science in the fall, so I thought it was a good idea to start off by getting us all on the same page.</p>
</div>
<div class="paragraph">
<p>You might already be familliar with programming. If so, I hope that you won&#8217;t waste too much time reading about something you already know. I&#8217;m sure that future articles will be more interesting.</p>
</div>
<div class="paragraph">
<p>If you don&#8217;t already know about programming, at least beyond a vauge idea, then let&#8217;s jump right in:</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_thinking_algorithmicly">Thinking Algorithmicly</h3>
<div class="paragraph">
<p>Computers are dumb. The one thing they can handle well is doing simple arithmetic really, <strong>really</strong> fast. So how is it that you can have an application, like the web browser you are using to read this, that doesn&#8217;t appear at first glance to be much at all like a math problem?<sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup></p>
</div>
<div class="paragraph">
<p>The answer, I think, is the core of programming:</p>
</div>
<div class="paragraph">
<p>In order to make a computer do something, one takes a big problem and breaks it down into small problems, until it is broken all the way down.<sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup></p>
</div>
<div class="paragraph">
<p>For example, in order to write a web browser, you can break it down into a few pieces:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Getting the webpage</p>
</li>
<li>
<p>Figuring out how the webpage should be displayed</p>
</li>
<li>
<p>Displaying the webpage</p>
</li>
<li>
<p>Handling user interaction (clicks, etc.)</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Each of those can be split down into more simple steps, until you reach steps simple enough that a computer can understand them. Now, because it&#8217;s tedious to go all the way from high-level interface to low level mathematical instructions, programmers have invented tools to make the process of expressing things to computers simpler. The most important of those tools are:</p>
</div>
</div>
<div class="sect2">
<h3 id="_programming_languages">Programming Languages</h3>
<div class="paragraph">
<p>There are many, <strong>many</strong> different programming languages. Each one is a particular way to represent an algorithm understood by a piece of software called a compiler (or an interpreter - yes, they are different, but they have some similarities). A compiler (or interpreter, as the case may be) takes the written representation of an algorithm in some form (code), and turns it into the written representation of an algorithm in another form.</p>
</div>
<div class="paragraph">
<p>For example, the first real compiler was for a language called Assembler (or Assembly). It took code that looked like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>MOV a, b
SET a, 3
XOR a, c
JMP</pre>
</div>
</div>
<div class="paragraph">
<p>and turned it into code that the computer understood (machine code), which looks like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>0x0101020501030f0103ff</pre>
</div>
</div>
<div class="paragraph">
<p>The next big step was a language called C. It took code that looked like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>int x = 3;
if (x ^ y) {
        foo();
}</pre>
</div>
</div>
<div class="paragraph">
<p>and turned it into the same machine code.</p>
</div>
<div class="paragraph">
<p>As computers got faster, and people got more ambitious, they began to build ever more abstract programming languages, that all did different things different ways, which leads to a good deal of confusion.</p>
</div>
<div class="paragraph">
<p>Still, they all make the basic task of programming (breaking things into smaller problems, and then writing down the solutions) easier in one way or another. Just as any craftsman must get to know their tools, computer programmers must spend time learning about the abstractions, styles, and rules of the particular language they choose to work with.</p>
</div>
</div>
<div class="sect2">
<h3 id="_so_now_what">So now what?</h3>
<div class="paragraph">
<p>The purpose of this post was just to get you used to the idea of what programming is; too many people just think of programming as magic. Using this knowledge, we will be able to learn about other things, like references, object-oriented programming, functional programming, and programming language design. I already have an article lined up for next week about one of the most fundamental abstractions of modern programming languages, and how it can effect how you think.</p>
</div>
<div class="paragraph">
<p>I look forward to bringing another interesting topic to your attention. <sup class="footnote">[<a id="_footnoteref_3" class="footnote" href="#_footnotedef_3" title="View footnote.">3</a>]</sup>Until then, enjoy your week.</p>
</div>
<div class="paragraph">
<p><em>If you&#8217;re interested, you could learn more about programming on your own. <a href="https://hkanacademy.org">Khan Academy</a> is a good place to start, or so I&#8217;ve heard. You can also check out <a href="https://python.org">Python</a>, for a very beginner-friendly programming language.</em></p>
</div>
<div style="page-break-after: always;"></div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. I really like rhetorical questions. They make me feel more like I&#8217;m actually adressing the reader. Do you like that style? Remember that you can always give me feedback at <a href="mailto:setupminimal@gmail.com">setupminimal@gmail.com</a>
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. "All the way down" can vary from situation to situation. Just wait a moment, and you&#8217;ll see what I mean.
</div>
<div class="footnote" id="_footnotedef_3">
<a href="#_footnoteref_3">3</a>. If you have something in particular you want to learn about, you can also send me requests
</div>
</div>