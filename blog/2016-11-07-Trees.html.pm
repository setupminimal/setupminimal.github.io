#lang pollen
<div class="paragraph">
<p>I really like trees. Both the growing kind, and the computer science kind. Remember Linked Lists? A bunch of cells strung together to form a chain, where each cell has a pointer to the next cell? Trees are almost the same idea.</p>
</div>
<div class="paragraph">
<p>Picture this: A cell with a 'left' pointer and a 'right' pointer. Instead of just being able to follow along the chain, the chain branches. This makes a structure like this:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>    4
   / \
  11  2
 / \   \
7   5   9</pre>
</div>
</div>
<div class="paragraph">
<p>Some terminology: Each number is a node. The height of the tree is how deep it is (3). The root of the tree is the topmost node (4). The ones on the bottom are called leaves.</p>
</div>
<div class="paragraph">
<p>What is this useful for? Actually, a lot of things. For example, file-systems are trees. There&#8217;s a root directory (<code>/</code> or <code>C:\</code>), and descending from the root, there&#8217;s a system of other directories, and files. Trees are also used for storing data that needs to be ordered, or that depends on other data.</p>
</div>
<div class="paragraph">
<p>One common use for trees is representing mathematical expressions.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>    +
   / \
  *   \
 / \   \
3   5   9</pre>
</div>
</div>
<div class="paragraph">
<p>This represents <code>9 + 3*5</code>. Pure mathematical expressions aren&#8217;t the only thing that can be represented, though. Take, for example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>  define
  /    \
 fact   *
 /     / \
n     n   fact
           \
            -
           / \
          n   1</pre>
</div>
</div>
<div class="paragraph">
<p>This represents a piece of code:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>def fact(n):
    return n * fact(n - 1)</pre>
</div>
</div>
<div class="paragraph">
<p><em>Note: This code doesn&#8217;t work and runs forever. To make it terminate, you would need to include a condition that `fact(0) = 1`</em></p>
</div>
<div class="paragraph">
<p>These kinds of trees are called Expression trees or Abstract Syntax Trees. They&#8217;re the most common way for compilers and other programs that deal with source code to represent programs internally. Representing programs like this makes them simple to execute: evaluate the left, the right, and then do what the node says.</p>
</div>
<div class="paragraph">
<p>There are other uses of trees - binary search trees, hash trees, etc. - but that&#8217;s the overview. See you again next week!</p>
</div>