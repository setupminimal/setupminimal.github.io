#lang pollen
<div class="paragraph">
<p>So this week we talked about HTML. The HyperText Markup Language is the language that web pages are written in. Every time your browser shows you a web page, it is really fetching an HTML document, and then using the layout information inside to present it to you on the screen. Here&#8217;s what a simple HTML document looks like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
  &lt;head&gt;
    &lt;title&gt;A simple Webpage&lt;/title&gt;
    &lt;meta charset="utf-8" /&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;This is a Heading&lt;/h1&gt;
    &lt;p&gt;Followed by a paragraph of information.&lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>
</div>
</div>
<div class="paragraph">
<p>Now the first thing you might notice about this is all the angle brackets. Something enclosed in <code>&lt;</code> and <code>&gt;</code> is a tag. Tags give the basic structure of an HTML document. All tags must have a closing tag, denoted with a <code>/</code>, although sometimes a tag is its own closing tag. <code>&lt;meta /&gt;</code> is one example of a self closing tag. <code>&lt;p&gt; . . . &lt;/p&gt;</code> is an example of an opening and a closing tag.</p>
</div>
<div class="paragraph">
<p>Each tag means something for the structure that comes inside it. <code>&lt;html&gt;</code> indicates that everything inside the tag is an HTML document. <code>&lt;head&gt;</code> indicates header information that is not displayed, such as the title, the language, the character encoding, any scripts on the page, etc. <code>&lt;body&gt;</code> indicates what actually gets displayed. <code>&lt;h1&gt;</code> makes its contents into a heading. <code>&lt;p&gt;</code> makes its contents into a paragraph.</p>
</div>
<div class="paragraph">
<p>There are a few other important bits:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>HTML ignores white space. As long as there is at least one space between words, they will appear with exactly one space between them.</p>
</li>
<li>
<p>Sometimes tags have additional information, like the <code>charset='utf-8'</code> in the <code>&lt;meta /&gt;</code> tag above.</p>
</li>
<li>
<p>Comments take the form of <code>&lt;!-- This is a comment &dash;&dash;&gt;</code>.</p>
</li>
<li>
<p>Tags always have to be <em>nested</em>. <code>&lt;p&gt;&lt;h1&gt;&lt;/p&gt;&lt;/h1&gt;</code> makes no sense at all.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You can try this out yourself really easily! Open up a text editor (Notepad, Notepad++ on Windows; TextEdit on macOS; and if you&#8217;re on Linux, you probably have at least three, and one is your favorite, and if I recommend another one you will tear me apart with wolves), write a document like the one above (you could even just copy-paste it), save the file as <code>example.html</code>, and open that file in your web browser. All major web browsers have an open-file option, usually in the File menu.</p>
</div>
<div class="paragraph">
<p>Then, you can edit the document, reload the page, and see your changes.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all for now, but next week we will go more in-depth on HTML. A great HTML and other standards reference is <a href="http://w3.org">W3</a>, the World Wide Web Consortium. They can give you more information on the various tags, as well as some helpful tutorials.</p>
</div>