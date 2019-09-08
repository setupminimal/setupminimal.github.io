#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week both CS515 and CS520 covered how to use C++ and C, respectively, to do things involving data.</p>
</div>
<div class="paragraph">
<p>C is a super-set of C - that is, if a program is valid C code, it is also valid C code. Luckily, this means that many of the same concepts apply equally well to both classes <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup>. The main concept this week is the idea of memory, and how things are laid out in memory.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_memory">Memory</h3>
<div class="paragraph">
<p>Physically, a computer uses a big block of logic gates that can store some state representing a Boolean value. So the first logic gate might have a 0, the second a 1, the third another 0, and so on. Let&#8217;s imagine that we had this segment of memory:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>...01000001...</pre>
</div>
</div>
<div class="paragraph">
<p>What does this represent? Well, it might represent the number 65, expressed in base 2. It might represent the letter 'A'. It might represent the number -191 represented in two&#8217;s-complement form. It might be part of a larger number. It could even be a gray-ish part of a pixel.</p>
</div>
<div class="paragraph">
<p>The meaning of the bits represented inside the computer depends on their interpretation. Which leads to a bunch of cool things, including:</p>
</div>
</div>
<div class="sect2">
<h3 id="_pointers">Pointers</h3>
<div class="paragraph">
<p>A pointer is just a bit of memory which stores the location of something else in memory. So, for example, an <code>int <strong></code> <sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup> in C means 'a value which points to the location of an integer'. An <code>int *</strong></code> <sup class="footnote">[<a id="_footnoteref_3" class="footnote" href="#_footnotedef_3" title="View footnote.">3</a>]</sup> points to the location of an <code>int *</code>.</p>
</div>
<div class="paragraph">
<p>Why is this important? Because it provides a fast way for different parts of a program to communicate, as well as providing a way to refer to big structures in memory using only a single number. To understand how pointers help with that, let&#8217;s take a look at Casting.</p>
</div>
</div>
<div class="sect2">
<h3 id="_casting">Casting</h3>
<div class="paragraph">
<p>Since <code>01000001</code> could mean either 65 or 'A', we can go back and forth between those two values not by changing the physical memory, but just by changing our <em>interpretation</em> of that memory. For example, <code>'A' + 1 == 'B'</code>. We think of 'A' as a number (65), add 1 (66), and then think of the result as a letter ('B').</p>
</div>
<div class="paragraph">
<p>How is this relevant to pointers? Well, let&#8217;s imagine that we have an <code>int *</code>. Since an <code>int *</code> is just a number stored in memory (like everything is), we can do math on it. So lets take our pointer and add 1 to it. Now what? Now the pointer points to the <em>next item in memory</em>. <sup class="footnote">[<a id="_footnoteref_4" class="footnote" href="#_footnotedef_4" title="View footnote.">4</a>]</sup> How cool is that?</p>
</div>
<div class="paragraph">
<p>We can use this ability to do math with pointers to create arrays. Just keep a pointer to the first item. Then, to look up the 3rd item, just add 2 to the pointer and look there. In fact, the syntax for accessing a particular item of an array (<code>array[index]</code>) is translated by the compiler into <code>array + (index * size-of-an-item-in-the-array)</code>, because <code>array</code> is just a pointer.</p>
</div>
</div>
<div class="sect2">
<h3 id="_so_what">So What?</h3>
<div class="paragraph">
<p>So why is all this actually useful? That&#8217;s a good question, and one that I don&#8217;t have a <em>complete</em> answer for yet. What I have done so far, however, is write a program that can convert from UTF-8 to UTF-32 by reading in the UTF-8 file into memory, and then reinterpreting each of the letters as an item to write out in UTF-32, so that&#8217;s pretty neat.</p>
</div>
<div class="paragraph">
<p>I hope to see you next week for more computer science!</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. Which is why I&#8217;m writing about them together.
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. Pronounced 'int pointer'.
</div>
<div class="footnote" id="_footnotedef_3">
<a href="#_footnoteref_3">3</a>. Pronounced 'int pointer pointer'
</div>
<div class="footnote" id="_footnotedef_4">
<a href="#_footnoteref_4">4</a>. Well, actually to the next byte in memory. If your object is bigger than a byte, then you need to add more than one to the pointer to find the next one.
</div>
</div>