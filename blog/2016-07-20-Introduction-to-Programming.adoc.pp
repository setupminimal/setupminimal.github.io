#lang pollen
= Introduction to Programming

Programming is one of the topics dear to my heart. I am, after all, going to college to pursue a degree in Computer Science. Consequently, Programming is going to come up a lot both in the articles I write over the summer about my job at the link:https://iol.unh.edu[UNH-IOL], and in the articles I write about Introduction to Computer Science in the fall, so I thought it was a good idea to start off by getting us all on the same page.

You might already be familliar with programming. If so, I hope that you won't waste too much time reading about something you already know. I'm sure that future articles will be more interesting.

If you don't already know about programming, at least beyond a vauge idea, then let's jump right in:

=== Thinking Algorithmicly

Computers are dumb. The one thing they can handle well is doing simple arithmetic really, *really* fast. So how is it that you can have an application, like the web browser you are using to read this, that doesn't appear at first glance to be much at all like a math problem?footnote:[
I really like rhetorical questions. They make me feel more like I'm actually adressing the reader. Do you like that style? Remember that you can always give me feedback at link:mailto:setupminimal@gmail.com[setupminimal@gmail.com]
]

The answer, I think, is the core of programming:

In order to make a computer do something, one takes a big problem and breaks it down into small problems, until it is broken all the way down.footnote:["All the way down" can vary from situation to situation. Just wait a moment, and you'll see what I mean.]

For example, in order to write a web browser, you can break it down into a few pieces:

* Getting the webpage
* Figuring out how the webpage should be displayed
* Displaying the webpage
* Handling user interaction (clicks, etc.)

Each of those can be split down into more simple steps, until you reach steps simple enough that a computer can understand them. Now, because it's tedious to go all the way from high-level interface to low level mathematical instructions, programmers have invented tools to make the process of expressing things to computers simpler. The most important of those tools are:

=== Programming Languages

There are many, *many* different programming languages. Each one is a particular way to represent an algorithm understood by a piece of software called a compiler (or an interpreter - yes, they are different, but they have some similarities). A compiler (or interpreter, as the case may be) takes the written representation of an algorithm in some form (code), and turns it into the written representation of an algorithm in another form.

For example, the first real compiler was for a language called Assembler (or Assembly). It took code that looked like this:

----
MOV a, b
SET a, 3
XOR a, c
JMP
----

and turned it into code that the computer understood (machine code), which looks like this:

----
0x0101020501030f0103ff
----

The next big step was a language called C. It took code that looked like this:

----
int x = 3;
if (x ^ y) {
	foo();
}
----

and turned it into the same machine code.

As computers got faster, and people got more ambitious, they began to build ever more abstract programming languages, that all did different things different ways, which leads to a good deal of confusion.

Still, they all make the basic task of programming (breaking things into smaller problems, and then writing down the solutions) easier in one way or another. Just as any craftsman must get to know their tools, computer programmers must spend time learning about the abstractions, styles, and rules of the particular language they choose to work with.

=== So now what?

The purpose of this post was just to get you used to the idea of what programming is; too many people just think of programming as magic. Using this knowledge, we will be able to learn about other things, like references, object-oriented programming, functional programming, and programming language design. I already have an article lined up for next week about one of the most fundamental abstractions of modern programming languages, and how it can effect how you think.

I look forward to bringing another interesting topic to your attention. footnote:[If you have something in particular you want to learn about, you can also send me requests]Until then, enjoy your week. 

_If you're interested, you could learn more about programming on your own. link:https://hkanacademy.org[Khan Academy] is a good place to start, or so I've heard. You can also check out link:https://python.org[Python], for a very beginner-friendly programming language._

<<<




