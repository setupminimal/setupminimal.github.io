#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>Hooray! This is the first of my in-school summaries! First up: Computer Science 417, From Programs to Computer Science.</p>
</div>
<div class="paragraph">
<p>This course is meant to give people who already understand programming an introduction to Computer Science. The syllabus includes things like analysis of sorting algorithms, time-vs-space complexity, and a bunch of other cool stuff. First, however, the professor (Professor Hausner) wanted to make sure everyone was on the same page.</p>
</div>
<div class="paragraph">
<p>I have remarked before that learning a new programming language is easy if you already know one - although this is more true of some languages than others. <a href="https://python.org">Python</a> is an easy-to-learn language that will be used throughout this course. Even though the students in class all have some prior programming experience, it varies widely. We even have one student who has programmed exclusively in Fortran! So the professor spent this week making sure that everyone knew the python basics.</p>
</div>
<div class="paragraph">
<p>If you want to follow along, great! Go install python from the link above, or from your package manager <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Typing anything in this typeface into python will (hopefully!) produce the same results that I give here.</pre>
</div>
</div>
<div class="paragraph">
<p>Feel free to play around with stuff, try variations on the examples I give, and find outside resources. <a href="https://khanacademy.org">Khan Academy</a> has some good tutorials.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_stuff">Stuff</h3>
<div class="paragraph">
<p>There are different types of things that you can have in python. <code>3</code> is an integer, <code>"Hello, World!"</code> is a string. <code>True</code> is a boolean value. <code>[0, 1, 3]</code> is a list that contains three integers. <code>["3", 3, [3]]</code> is a list containing a string, an integer, and another list. In many programming languages, there is a restriction that a variable (like <code>x</code>), can only contain things that have the same type. Not so in python! I can say this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>x = 3
print x    # This prints 3
x = "Jelly"
print x    # This prints Jelly</pre>
</div>
</div>
<div class="paragraph">
<p>There are more types of things in python, but those are the only ones we will need for now.</p>
</div>
</div>
<div class="sect2">
<h3 id="_loops">Loops</h3>
<div class="paragraph">
<p>In the example above, something wonderful happens. The 4 steps, one per line, happen in the right order. They go from top to bottom. This is good! If our program ran backwards, it would break all kinds of things! But sometimes, it&#8217;s easier to write something where the lines can jump around. Enter loops:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>for word in ["apple", "banana", "dragonfruit", "turtle"]:
    print word</pre>
</div>
</div>
<div class="paragraph">
<p>This prints</p>
</div>
<div class="listingblock">
<div class="content">
<pre>apple
banana
dragonfruit
turtle</pre>
</div>
</div>
<div class="paragraph">
<p>This is, in my opinion, the most important loop in python. It allows you to take a group of things, like a list, and do something for each item in that group of things. It&#8217;s even more useful when you consider this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>for i in range(5):
    print i</pre>
</div>
</div>
<div class="paragraph">
<p>which prints</p>
</div>
<div class="listingblock">
<div class="content">
<pre>0
1
2
3
4</pre>
</div>
</div>
<div class="paragraph">
<p><code>range</code> is a function (see next section) that takes a number, and returns a list of all numbers smaller than that number, in order.</p>
</div>
<div class="paragraph">
<p>There are other loops (notably <code>while</code>), but there is also another construct that allows you to jump around.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>if a == 2:
    print "Two"
else:
    print "Not Two"</pre>
</div>
</div>
<div class="paragraph">
<p><code>if</code> statements let you do something only if a given condition is met. This is super useful, as I&#8217;m sure you can imagine. There&#8217;s one final big piece of python (and many, many little pieces) that you should know about.</p>
</div>
</div>
<div class="sect2">
<h3 id="_functions">Functions</h3>
<div class="paragraph">
<p>The other thing the professor talked about in class was functions, and how they work in python. Functions look like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def double(x):
    return x + x</pre>
</div>
</div>
<div class="paragraph">
<p>This creates a function called <code>double</code> that will add whatever you give it to itself, like so:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>x = 5
print double(x)  # This prints 10</pre>
</div>
</div>
<div class="paragraph">
<p>You can even make functions that call themselves, like this function that computes the factorial:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)</pre>
</div>
</div>
<div class="paragraph">
<p>There are all sorts of cool things you can do with functions, like making functions that return functions, but that will have to be a topic for another time, because that&#8217;s all we covered in class. I&#8217;m looking forward to next week, and I hope you are too! Remember, if you have any questions you can email me at <a href="mailto:setupminimal@gmail.com">setupminimal@gmail.com</a>, and you can find more information on python, as well as great tutorials, at <a href="https://python.org">python.org</a>, or anywhere internet is sold.</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. If you don&#8217;t know what that is, don&#8217;t worry. You probably don&#8217;t have one. I&#8217;m just trying to be inclusive of all computer users.
</div>
</div>