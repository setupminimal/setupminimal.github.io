#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>So this is the final week of getting everyone up to speed on <a href="https://python.org">Python</a>, that wonderful programming language. While I might do basic recaps of python&#8217;s functionality if it comes up, after this week my CS course is going to focus more on algorithms - less talk about the language, more talk about what we&#8217;re saying in the language.</p>
</div>
<div class="paragraph">
<p>The big thing this week was</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_opening_files">Opening Files</h3>
<div class="paragraph">
<p>Yay! So last week, we talked about the basics - what things existed, how you could manipulate them, and how to control what your program does. This week, we reviewed interacting with the outside world. A program doesn&#8217;t do very much if it just sits in the dark! It has to talk to the user, to the filesystem, sometimes even to the internet. Here are a few ways to do that:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>raw_input("Prompt: ")</pre>
</div>
</div>
<div class="paragraph">
<p>This is a function that&#8217;s built into python. It prints the prompt on the screen, and then returns whatever the user answers.</p>
</div>
<div class="listingblock">
<div class="content">
<pre>file = open(filename, 'something')</pre>
</div>
</div>
<div class="paragraph">
<p>This is a function that&#8217;s used to read or write a file. If you say <code>open("blah.txt", 'r')</code>, it opens the file for reading. If you say <code>open("blah.txt", 'w')</code>, it opens the file for writing. Either way, it returns a <em>file handle</em>, which is just something that refers to the file. Then you can do something like:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>squirrels = file.readlines()</pre>
</div>
</div>
<div class="paragraph">
<p>or</p>
</div>
<div class="listingblock">
<div class="content">
<pre>file.write("I have a fish.")</pre>
</div>
</div>
<div class="paragraph">
<p>which reads stuff from the file, or writes stuff to it, respectively.</p>
</div>
<div class="paragraph">
<p>There&#8217;s a few things to be aware of when reading files. If the file is really big, reading everything at once can make the computer run out of memory and slow down. For most applications, the program can read the file in one line at a time (using <code>file.readline()</code> instead of <code>file.readlines()</code>), which prevents this problem.</p>
</div>
<div class="paragraph">
<p>The other thing you should remember is that if you open a file for reading or writing, you should close it once you&#8217;re done (like this: <code>file.close()</code>), so that the operating system knows that you&#8217;re done, and it can do other things with that file.</p>
</div>
<div class="paragraph">
<p>After that, we did a bunch of practice in class with writing programs that do different things, like reading in a payroll and timesheet for a small office, and printing out how much each person should be paid. If you want to follow along with the course, instead of simply being entertained by my voice (. . . text, words, whatever), I highly recommend you do the same thing. There are some great tutorials available at <a href="https://python.org">Python.org</a>, and <a href="https://khanacademy.org">Khan Academy</a> that will let you practice.</p>
</div>
</div>