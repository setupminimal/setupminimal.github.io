#lang pollen
= Computer Science: Actually Doing Things

So this is the final week of getting everyone up to speed on link:https://python.org[Python], that wonderful programming language. While I might do basic recaps of python's functionality if it comes up, after this week my CS course is going to focus more on algorithms - less talk about the language, more talk about what we're saying in the language.

The big thing this week was

=== Opening Files

Yay! So last week, we talked about the basics - what things existed, how you could manipulate them, and how to control what your program does. This week, we reviewed interacting with the outside world. A program doesn't do very much if it just sits in the dark! It has to talk to the user, to the filesystem, sometimes even to the internet. Here are a few ways to do that:

----
raw_input("Prompt: ")
----

This is a function that's built into python. It prints the prompt on the screen, and then returns whatever the user answers.

----
file = open(filename, 'something')
----

This is a function that's used to read or write a file. If you say `open("blah.txt", 'r')`, it opens the file for reading. If you say `open("blah.txt", 'w')`, it opens the file for writing. Either way, it returns a _file handle_, which is just something that refers to the file. Then you can do something like:

----
squirrels = file.readlines()
----

or

----
file.write("I have a fish.")
----

which reads stuff from the file, or writes stuff to it, respectively.

There's a few things to be aware of when reading files. If the file is really big, reading everything at once can make the computer run out of memory and slow down. For most applications, the program can read the file in one line at a time (using `file.readline()` instead of `file.readlines()`), which prevents this problem.

The other thing you should remember is that if you open a file for reading or writing, you should close it once you're done (like this: `file.close()`), so that the operating system knows that you're done, and it can do other things with that file.

After that, we did a bunch of practice in class with writing programs that do different things, like reading in a payroll and timesheet for a small office, and printing out how much each person should be paid. If you want to follow along with the course, instead of simply being entertained by my voice (. . . text, words, whatever), I highly recommend you do the same thing. There are some great tutorials available at link:https://python.org[Python.org], and link:https://khanacademy.org[Khan Academy] that will let you practice.