#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week we talked about Stacks, Queues, and the uses for them. A stack is a simple kind of data container. You can put things into it, and you can take something out of it. The first thing you put in is the last thing to come out. Every time you push something into the stack, all the other items 'move down', leaving the new item on the top. Every time you retrieve something, you get the top item.</p>
</div>
<div class="paragraph">
<p>A Queue is almost the same, except that the first thing you put in is the first thing to come out. Instead of taking items off of the top, you take items off of the bottom.</p>
</div>
<div class="paragraph">
<p>So what are these useful for?</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_reverse_polish_notation">Reverse Polish Notation</h3>
<div class="paragraph">
<p>Reverse Polish Notation is an alternate syntax for mathematics that avoids the use of parenthesies by using a stack. Instead of saying <code>(3 + 4) * 5</code>, you say <code>3 4 + 5 *</code>. Every time you see a number, put it on the stack. Every time you see an operator, take two numbers off the stack, perform the operation, and push the result. Here&#8217;s how the stack would change over time as we evaluate the expression above:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>3 | 3
4 | 4 3
+ | 7
5 | 5 7
* | 35</pre>
</div>
</div>
<div class="paragraph">
<p>And <code>35</code> is our answer! Cool! This system is used a lot in computing, because it&#8217;s so easy to implement. It gets used for teh Java Virtual Machine, it gets used for Forth, for Python Bytecode, etc. But how can you change <code>(3 + 4) * 5</code> into <code>3 4 + 5 *</code>?</p>
</div>
</div>
<div class="sect2">
<h3 id="_the_shunting_yard_algorithm">The Shunting Yard Algorithm</h3>
<div class="paragraph">
<p>Believe it or not, the answer is to use a stack once again. Here&#8217;s the algorithm: If you see a number, output it. If you see an open parenthesis, put it on the stack. If you see an operator, put it on the stack. If you see a close parenthesis, pop things off of the stack until you reach an open parenthesis, and output them. Here&#8217;s how it would evolve over time:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>token | stack | output
 (    |  (    |
 3    |  (    |  3
 +    |  (+   |  3
 4    |  (+   |  3 4
 )    |       |  3 4 +
 *    |  *    |  3 4 +
 5    |  *    |  3 4 + 5
 end  |       |  3 4 + 5 *</pre>
</div>
</div>
<div class="paragraph">
<p>Using this algorithm, you can turn infix notation into postfix notation. Similar algorithms can be used for languages other than arithmetic. In general, if you can figure out how to turn your language into a bunch of values connected by operators, you can walk down the program and turn it into a postfix representation.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all! Next week: the CS midterm.</p>
</div>
</div>