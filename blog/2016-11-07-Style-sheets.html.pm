#lang pollen
<div class="paragraph">
<p>This week it IT, we talked about Cascading Style Sheets. Let&#8217;s say that you&#8217;ve written a web-page. By default, it looks bland - a plain white background, no alignment of paragraphs, all in the same font. But you know that HTML5 is all about separating semantics from display, so there&#8217;s no good way to style your web-page using only HTML. What can you do?</p>
</div>
<div class="paragraph">
<p>Use CSS! Cascading Style Sheets give browsers information on how you would like your page to be displayed. CSS lets you do things like change text size, color, and font, adjust the spacing around various elements. For example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>h1 {color: silver;}</pre>
</div>
</div>
<div class="paragraph">
<p>This makes your biggest headings silver, instead of black. Or</p>
</div>
<div class="listingblock">
<div class="content">
<pre>p {text-size: 1.2em;}</pre>
</div>
</div>
<div class="paragraph">
<p>Which makes the text in your paragraphs larger. In general, CSS is structured like</p>
</div>
<div class="listingblock">
<div class="content">
<pre>what-I-am-going-to-effect {attribute-to-effect: what-to-make-it;}</pre>
</div>
</div>
<div class="paragraph">
<p>You can also combine multiple styles:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>p {line-spacing: 1.4em; color: #003456;}</pre>
</div>
</div>
<div class="paragraph">
<p>Which will make the text in your paragraphs more spaced out, and a blue-green color. You can also effect multiple things at once:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>h1, h2, h3, h4, h5, h6 {background: #FF0000;}</pre>
</div>
</div>
<div class="paragraph">
<p>Which gives all of your sizes of heading red backgrounds. The CSS selectors get pretty fancy. You can select elements by id, by parent, by sibling, by class, and by combinations thereof. The rest of class was dedicated to answering questions, and talking about how to pick colors and styles that won&#8217;t clash horribly.</p>
</div>
<div class="paragraph">
<p>There are a lot of great resources on the web, if you want to learn more. I recommend <a href="http://www.w3schools.com">W3 Schools</a>.</p>
</div>