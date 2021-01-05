#lang pollen
= IT Week 4

This week we talked about URLs. Also about the project coming up, but you probably aren't interested in that.

== URLs

What is a URL? A Uniform Resource Locator is a string, that fits the correct format, that tells you where to find something. Usually, we use them to find web resources - web-pages, videos, etc. If you look in the address bar of the web-browser you are using to read this, you can see a URL pointing to this document. Let's take an example, and break it down into its constituent parts: `https://en.wikipedia.org/wiki/Electroreception`.

So. What is the first part? If you don't know, how we should break the URL into pieces may not be obvious - so I'll tell you that URLs use `/`s and ":" as delimiters. If we break the URL apart like that, we get `https`, `en.wikipedia.org`, `wiki` and `Electroreception`. So what is that first part?

=== Schemes

`https` is a _scheme_. In other contexts, a scheme is something like a protocol. HTTPS is the HyperText Transfer Protocol (Secure). `https` is the identifier in a URL that tells you to use HTTPS to retrieve the document that the URL is describing. What are some other schemes, I hear you ask?

 - `http` indicates you should use the HyperText Transfer Protocol (not secure).
 - `ftp` indicates you should use the File Transfer Protocol.
 - `mailto` indicates that you should send mail - which uses the Secure Mail Transport Protocol, usually.
 - `gopher` indicates you should use the Gopher protocol.
 - Applications can define their own schemes. There are so many that it would be impossible to list them all.

So in general, the scheme tells you how to look up the document based on the rest of the URL. What about the next part?

=== Hostnames

The next part of our example URL was `en.wikipedia.org`. This is called the hostname, because it is the name of a particular server where the document you want is stored. Your computer then uses DNS, the Domain Name System, to look up the address of that computer. Using a hostname is better than using the address directly, because if the server changes locations, or if there are multiple servers, all the old URLs will still work.

Wait a minute! If that part of the URL is the hostname, why is it called the Domain Name System? `wikipedia.org` is what is known as a Domain Name. Basically, `wikipedia.org` specifies that you should go ask Wikipedia's systems for information on where to find this `en` server. All DNS queries start from a series of root servers. Then, you ask each server in turn where to find the next bit of information. Eventually, you get back an exact answer as to the location of `en.wikipedia.org`.

Okay, what about the next part?

=== Pathing

I wasn't totally clear up above - `wiki` and `Electroception` aren't really different parts of the URL. These are part of the _Pathing information_. Pathing information is stuff that you give to the server to help them find the document that you want. Once you contact `en.wikipedia.org` using `https`, the server needs to know which of the million articles that it stores you're interested in. You send `/wiki/Electroception` to it, and it looks in the `wiki` folder, and then sends you the `Electroception` document. Your web browser reads the document and displays it for you.

=== Other Stuff

There are a few other things you can put in URLs, but they're somewhat less common.

==== Usernames

Some systems, especially `ftp`, require you to put in a username and password before reading a document. You can embed the username in the url by putting a `username@` in front of the hostname. For example: `git://setupminimal@github.com/setupminimal/blog` is how I would push updates to this blog if I weren't using the web interface.

==== Parameters

Sometimes, the server needs additional information to go along with your pathing information. You can append `?key=value&key2=value&cat=dog` to the end of a URL to specify additional information that the server can use to fulfill your request.

==== Fragment Identifiers

Sometimes, for really big documents, you want to point to a particular location within the document. If you stick a `#fragment` on the end of a URL, it will tell your web-browser to jump to the part of the document labeled `fragment`.

== That's All

URLs are pretty cool - and essential for writing web-pages. If you want a technical document that goes into a lot of detail on URLs, how to read them, and why they are the way they are, you can check out link:https://www.ietf.org/rfc/rfc1738.txt[RFC 1738], the formal specification of the URL standard.
