#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week in Math, we had our first test, so I thought I would make a test for you. Since I don&#8217;t want to put you off your breakfast, if the thought of a Math test makes you break out in Hives, then feel free to skip this week&#8217;s post. For the rest of you, I have <strong>Questions</strong> followed by example <code>Answers</code>. I&#8217;ve tried to make sure my answers are accurate, but if you find a problem, feel free to <a href="mailto:setupminimal@gmail.com">let me know</a>.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_the_test">The Test</h3>
<div class="paragraph">
<p><strong>What is a Statement?</strong></p>
</div>
<div class="paragraph">
<p><code>A statement is a sentence which is either true or false. For example: the previous sentence.</code></p>
</div>
<div class="paragraph">
<p><strong>What is an Open Sentence?</strong></p>
</div>
<div class="paragraph">
<p><code>An open sentence is a sentence, along with a domain, which becomes a statement when each item in the domain is placed into the sentence. For example: For x in {1, 2, 3, 7}, x*2 - 10 &lt; 0.</code></p>
</div>
<div class="paragraph">
<p><strong>Is the statement "If the Sun is purple then today is Tuesday" true or false?</strong></p>
</div>
<div class="paragraph">
<p><code>True! When dealing with an implication, if your condition is incorrect information (The Sun isn&#8217;t purple), then it doesn&#8217;t matter what the rest of the sentence is, the whole condition is true. My professor helps us remember this by saying "Well, it isn&#8217;t the <em>logic</em> that&#8217;s flawed."</code></p>
</div>
<div class="paragraph">
<p><strong>Proove that when x and y are integers, x is odd or y is even if and only if (x - 3)(y + 4) is even.</strong></p>
</div>
<div class="listingblock">
<div class="content">
<pre>To prove the above, we must show that:

  1. if x is odd or y is even, (x - 3)(y + 4) is even.
  2. if (x - 3)(y + 4) is even, x is odd or y is even.

To prove 1, we will use a direct proof by cases.

  Case A:
    Assume y is even. Then y + 4 is even, so (x - 3)(y + 4) is even.
  Case B:
    Assume x is odd. Then x - 3 is even, so (x - 3)(y + 4) is even.

To prove 2, we will use a contrapositive proof.
Assume that x is even and y is odd. Then x = 2k for some integer k,
and y = 2j + 1 for some integer j. Therefore, (x - 3)(y + 4) =
(2k - 3)(2j + 1 + 4) = (2k - 3)(2j + 5).
Since niether of those factors is even, the whole expression is odd.
Therefore if (x - 3)*(y + 4) is even, then either x is odd or y is even.

Since 1 and 2, it is prooven.</pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_comments">Comments</h3>
<div class="paragraph">
<p>Our actual test was longer, but I have no interest in boring you with a full recounting. The important thing is to remember to occasionally check your knowledge to make sure that you haven&#8217;t developed any gaps of understanding. The professor has emphasized that from here on proof writing becomes a larger part of the course. I hope to include more proofs like the above, both as examples and to help me write clearer proofs through practice.</p>
</div>
<div class="paragraph">
<p>I hope to see you all again next week for more mathematics!</p>
</div>
</div>