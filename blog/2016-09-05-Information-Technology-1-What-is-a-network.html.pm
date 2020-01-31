#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>Information Technology! It&#8217;s a thing! It&#8217;s a class! I&#8217;m taking it!</p>
</div>
<div class="paragraph">
<p>This week we covered something really basic, but fundamental to developing an understanding of the internet.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_what_is_a_network">What is a network?</h3>
<div class="paragraph">
<p>A network is a group of things that communicate somehow. That&#8217;s a very vague definition, of course, but it is the most general one. When we talk about networks, we usually mean networks of computers. Some computers communicate somehow. The "somehow" is the interesting part this week. How do computers communicate? They use protocols.</p>
</div>
<div class="paragraph">
<p>A protocol is just an agreement about how two things will express something to one another. One of the most common protocols is HTTP (The HyperText Transfer Protocol), which is how your web-browser talks to a server. Without going into the details of how the server and the web-browser know to talk to one another, or how they make sure it&#8217;s a secure connection, here is an example of how HTTP works:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>Browser: GET _webpage-name_ HTTP/_version-number_
Browser: Host: _website-name_

Server: HTTP/_version-number_ 200 OK
Server: _A bunch of stuff like the current date and how the data is encoded_
Server: _The webpage that was requested_</pre>
</div>
</div>
<div class="paragraph">
<p>All of the browsers and webservers agree that the browser starts by making a request, like "GET <em>webpage-name</em>" or "POST <em>form-name</em>", and the server responds with some status like "200 OK" or "404 Not Found" to let the browser know how the request went, followed by data for the browser to display. This agreement to say exactly these things in exactly these ways is a protocol.</p>
</div>
<div class="paragraph">
<p>There are a bunch of protocols: FTP (File Transfer Protocol), SSH (Secure SHell), RDP (Remote Desktop Protocol), SMTP (Simple Mail Transfer Protocol), POP (Post Office Protocol), IMAP (Internet Mail Access Protocol), and many more. The important part is that unlike human language, which evolves over time and has no consistent standard, protocols are fixed, which makes them easy for computers to interpret and use.</p>
</div>
<div class="paragraph">
<p>That&#8217;s really all we talked about this week (it was a short lesson), but in the future we will dig into a lot of things, like protocol design, webpage design, and so much more.</p>
</div>
</div>