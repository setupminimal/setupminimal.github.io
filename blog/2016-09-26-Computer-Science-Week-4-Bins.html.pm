#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week was . . . kind of slow. We talked about sorting values into bins.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_bins">Bins</h3>
<div class="paragraph">
<p>Let&#8217;s imagine that you have 1,000 numbers from 0 to 10, and I want you to sort them into 10 equally sized bins. How would you do this?</p>
</div>
<div class="paragraph">
<p>The naïve thing to do would be to sort each number like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>bins = [0,0,0,0,0,0,0,0,0,0]

for number in numbers:
    if number &lt; 1:
       bins[0] += 1
       continue
    elif number &lt; 2:

    . . .

    else:
        bins[9] += 1
        continue</pre>
</div>
</div>
<div class="paragraph">
<p>That is, to write out every possible option in a big if-then-else statement. The problem is that this approach doesn&#8217;t scale well. What if I wanted them sorted into 1,000 buckets? It would be extremely tedious to write this using the same approach. So what did the professor ask us to do instead? Let me introduce you to the <code>bisect</code> module. A module is like a collection of useful functions and variables and classes and whatnot, all bound together for easy distribution. <code>bisect</code> comes built into python, I believe. It contains several useful functions, but the one that we&#8217;re going to use is called <code>bisect_left</code>. <code>bisect_left</code> takes a list and a thing, and tells you how far into the list you have to go to find a thing bigger than the first thing, minus one.</p>
</div>
<div class="paragraph">
<p>Now, we can write something like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>import bisect

bins = [0]*10
for number in numbers:
    bins[min(len(bins), bisect.bisect_left(range(10), number))] += 1</pre>
</div>
</div>
<div class="paragraph">
<p>Much shorter, and we can change the number of bins by messing around with the <code>range</code> call.</p>
</div>
</div>
<div class="sect2">
<h3 id="_classes">Classes</h3>
<div class="paragraph">
<p>After talking about bins, and doing an exercise involving histograms, we moved on to Classes. In python, remember how there were different types of things, like `list`s, `int`s, `strings`s, `function`s, et cetera? A class is a type of thing. Python let&#8217;s us define our own types, and make them do things. Here&#8217;s an example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>class Animal:
      def __init__(self, name):
          self._name = name

      def __str__(self):
          return "A " + self._name</pre>
</div>
</div>
<div class="paragraph">
<p>This class can be used like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>a = Animal() # Creates a new Animal
print str(a) # Turns the Animal into a string and prints it.</pre>
</div>
</div>
<div class="paragraph">
<p>The <code><em>init</em></code> function tells us how to make a new thing of a class, and the <code><em>str</em></code> function tells us how to turn it into a string. There are a bunch of other special functions too, but not all functions in a class need to be special. One of the most useful things about classes is their ability to bundle information and functions together, so that the functions can rely on the information being there without having to worry about keeping a bunch of different versions separate.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all this week, but I hope to see you again next Sunday. Happy coding!</p>
</div>
</div>