#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week we talked about URLs. Also about the project coming up, but you probably aren&#8217;t interested in that.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_urls">URLs</h2>
<div class="sectionbody">
<div class="paragraph">
<p>What is a URL? A Uniform Resource Locator is a string, that fits the correct format, that tells you where to find something. Usually, we use them to find web resources - web-pages, videos, etc. If you look in the address bar of the web-browser you are using to read this, you can see a URL pointing to this document. Let&#8217;s take an example, and break it down into its constituent parts: <code><a href="https://en.wikipedia.org/wiki/Electroreception" class="bare">https://en.wikipedia.org/wiki/Electroreception</a></code>.</p>
</div>
<div class="paragraph">
<p>So. What is the first part? If you don&#8217;t know, how we should break the URL into pieces may not be obvious - so I&#8217;ll tell you that URLs use <code>/`s and ":" as delimiters. If we break the URL apart like that, we get `https</code>, <code>en.wikipedia.org</code>, <code>wiki</code> and <code>Electroreception</code>. So what is that first part?</p>
</div>
<div class="sect2">
<h3 id="_schemes">Schemes</h3>
<div class="paragraph">
<p><code>https</code> is a <em>scheme</em>. In other contexts, a scheme is something like a protocol. HTTPS is the HyperText Transfer Protocol (Secure). <code>https</code> is the identifier in a URL that tells you to use HTTPS to retrieve the document that the URL is describing. What are some other schemes, I hear you ask?</p>
</div>
<div class="ulist">
<ul>
<li>
<p><code>http</code> indicates you should use the HyperText Transfer Protocol (not secure).</p>
</li>
<li>
<p><code>ftp</code> indicates you should use the File Transfer Protocol.</p>
</li>
<li>
<p><code>mailto</code> indicates that you should send mail - which uses the Secure Mail Transport Protocol, usually.</p>
</li>
<li>
<p><code>gopher</code> indicates you should use the Gopher protocol.</p>
</li>
<li>
<p>Applications can define their own schemes. There are so many that it would be impossible to list them all.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>So in general, the scheme tells you how to look up the document based on the rest of the URL. What about the next part?</p>
</div>
</div>
<div class="sect2">
<h3 id="_hostnames">Hostnames</h3>
<div class="paragraph">
<p>The next part of our example URL was <code>en.wikipedia.org</code>. This is called the hostname, because it is the name of a particular server where the document you want is stored. Your computer then uses DNS, the Domain Name System, to look up the address of that computer. Using a hostname is better than using the address directly, because if the server changes locations, or if there are multiple servers, all the old URLs will still work.</p>
</div>
<div class="paragraph">
<p>Wait a minute! If that part of the URL is the hostname, why is it called the Domain Name System? <code>wikipedia.org</code> is what is known as a Domain Name. Basically, <code>wikipedia.org</code> specifies that you should go ask Wikipedia&#8217;s systems for information on where to find this <code>en</code> server. All DNS queries start from a series of root servers. Then, you ask each server in turn where to find the next bit of information. Eventually, you get back an exact answer as to the location of <code>en.wikipedia.org</code>.</p>
</div>
<div class="paragraph">
<p>Okay, what about the next part?</p>
</div>
</div>
<div class="sect2">
<h3 id="_pathing">Pathing</h3>
<div class="paragraph">
<p>I wasn&#8217;t totally clear up above - <code>wiki</code> and <code>Electroception</code> aren&#8217;t really different parts of the URL. These are part of the <em>Pathing information</em>. Pathing information is stuff that you give to the server to help them find the document that you want. Once you contact <code>en.wikipedia.org</code> using <code>https</code>, the server needs to know which of the million articles that it stores you&#8217;re interested in. You send <code>/wiki/Electroception</code> to it, and it looks in the <code>wiki</code> folder, and then sends you the <code>Electroception</code> document. Your web browser reads the document and displays it for you.</p>
</div>
</div>
<div class="sect2">
<h3 id="_other_stuff">Other Stuff</h3>
<div class="paragraph">
<p>There are a few other things you can put in URLs, but they&#8217;re somewhat less common.</p>
</div>
<div class="sect3">
<h4 id="_usernames">Usernames</h4>
<div class="paragraph">
<p>Some systems, especially <code>ftp</code>, require you to put in a username and password before reading a document. You can embed the username in the url by putting a <code>username@</code> in front of the hostname. For example: <code>git://setupminimal@github.com/setupminimal/blog</code> is how I would push updates to this blog if I weren&#8217;t using the web interface.</p>
</div>
</div>
<div class="sect3">
<h4 id="_parameters">Parameters</h4>
<div class="paragraph">
<p>Sometimes, the server needs additional information to go along with your pathing information. You can append <code>?key=value&amp;key2=value&amp;cat=dog</code> to the end of a URL to specify additional information that the server can use to fulfill your request.</p>
</div>
</div>
<div class="sect3">
<h4 id="_fragment_identifiers">Fragment Identifiers</h4>
<div class="paragraph">
<p>Sometimes, for really big documents, you want to point to a particular location within the document. If you stick a <code>#fragment</code> on the end of a URL, it will tell your web-browser to jump to the part of the document labeled <code>fragment</code>.</p>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_thats_all">That&#8217;s All</h2>
<div class="sectionbody">
<div class="paragraph">
<p>URLs are pretty cool - and essential for writing web-pages. If you want a technical document that goes into a lot of detail on URLs, how to read them, and why they are the way they are, you can check out <a href="https://www.ietf.org/rfc/rfc1738.txt">RFC 1738</a>, the formal specification of the URL standard.</p>
</div>
</div>
</div>