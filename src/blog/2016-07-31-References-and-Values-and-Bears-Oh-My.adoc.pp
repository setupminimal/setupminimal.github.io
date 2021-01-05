#lang pollen
= References and Values and Bears, Oh My!

As you may recall, I have a work-study program at the link:https://iol.unh.edu[UNH-IOL]. In the course of my duties, I was recently asked to write a series of tests for the test tool that my consortium uses. Things were going swimmingly, until I ran into an issue that really drove home something that should be learned quite early on when one is learning programming:

=== Variables are References

If you took High-school Algebra, you are familliar with the concept of a variable. Something like `_x_` in the expression `_x = 5_`. In most programming languages footnote:[There are a lot of different languages that do things differently. Each language is a different way of writing down an algorithm - check out my introductory post on link:https://setupminimal.github.io/blog/2016/07/20/Introduction-to-Programming.html[Programming]] this doesn't do what you're familiar with from mathematical notation.

`_x = 5_` creates a box called `_x_`, and puts something in it. In some languages, it may put a `_5_` directly in the box, but in some lanugages it may put a number (called a pointer) in the box that represents the location of `_5_`. If I later say `_x = 42_`, it updates the something in the box to be or point to `_42_`. This clearly breaks the idea that we expect from math, that `_x_` maintains its value.

If you aren't familiar with what the particular language you are using does, then it is easy to become confused about what exactly `_x_` _means_. If you use `_x_` as something that can't change, or as directly holding the value, or as a pointer, and that's not what your language means, your program may not do what you think it does. This happened to me just recently - despite my years of writing in this particular programming language.

=== What I did

I was working on some code that looked like this footnote:[In Pseudocode, because teaching Java Syntax is not what this post is about. Go try out link:https://khanacademy.com[Khan Academy]] footnote:[Also, this code has been edited down for simplicity - it wasn't really like this.]:

----
x = new Foo()

setFavoriteColor(x, "Blue")

goDoSomethingWhileIKeepGoing(x)

setFavoriteColor(x, "Yellow")

goDoSomethingElse(x)
----

The problem with this was that `goDoSomethingWhileIKeepGoing` kept doing things in the background, and that it would suddenly change from using a favorite color of "Blue" to a favorite color of "Yellow".

The language I was using (Java) stores pointers instead of actual items when you make a new variable (mostly; it's kind of ugly). When I changed the favorite color of `_x_`, I changed it for the one `_Foo_` object that both functions were using. Because of this, the color suddenly changed in `goDoSomethingWhileIKeepGoing`, even though the change was made after it was initially called.

=== So What?

Yes, this is a sad story, but what does it actually mean for you?

You could take several lessons from it, if you were so inclined. For example, that you should always take care to know your tools before you use them. The lesson that I want to highlight, however, is that the real world is complicated, and abstractions are leaky.

Because I am going to summarize my Computer Science classes for you here on this blog, I am going to be talking a lot about the abstract. Big, magnificent proofs, ivory tower-dwelling concepts, and really cool, but impractical, ideas. What we should strive to remember, however, is that the real world is messy, and that computers mostly don't work like that.

Computers are made out of transisters on silicon - carefully organized sand. They don't have infinite time. They don't have infinite storage. They don't have infinite power. They represent everything as numbers, true, but the format for those numbers is ad-hoc, designed over decades by people who mostly were learning it as they went along.

When people design programming languages, they do it with real applications and limitations in mind. No programming language that anyone would actually use would or could be perfect.

So we should remember to stay grounded - when actually making actual things, it will never quite be like the beautiful elegance we expect from Computer Science.

Sorry for the delay on this post - I expect to have something for you next week, but it's a little hectic at work, so it may be slightly late. Anyhow, have a nice week.