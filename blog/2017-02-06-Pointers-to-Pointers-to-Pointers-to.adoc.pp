#lang pollen
= Pointers to Pointers to Pointers to ...

This week both CS515 and CS520 covered how to use C++ and C, respectively, to do things involving data.

C++ is a super-set of C - that is, if a program is valid C code, it is also valid C++ code. Luckily, this means that many of the same concepts apply equally well to both classes footnote:[Which is why I'm writing about them together.]. The main concept this week is the idea of memory, and how things are laid out in memory.

=== Memory

Physically, a computer uses a big block of logic gates that can store some state representing a Boolean value. So the first logic gate might have a 0, the second a 1, the third another 0, and so on. Let's imagine that we had this segment of memory:

----
...01000001...
----

What does this represent? Well, it might represent the number 65, expressed in base 2. It might represent the letter 'A'. It might represent the number -191 represented in two's-complement form. It might be part of a larger number. It could even be a gray-ish part of a pixel.

The meaning of the bits represented inside the computer depends on their interpretation. Which leads to a bunch of cool things, including:

=== Pointers

A pointer is just a bit of memory which stores the location of something else in memory. So, for example, an `int *` footnote:[Pronounced 'int pointer'.] in C means 'a value which points to the location of an integer'. An `int **` footnote:[Pronounced 'int pointer pointer'] points to the location of an `int *`.

Why is this important? Because it provides a fast way for different parts of a program to communicate, as well as providing a way to refer to big structures in memory using only a single number. To understand how pointers help with that, let's take a look at Casting.

=== Casting

Since `01000001` could mean either 65 or 'A', we can go back and forth between those two values not by changing the physical memory, but just by changing our _interpretation_ of that memory. For example, `'A' + 1 == 'B'`. We think of 'A' as a number (65), add 1 (66), and then think of the result as a letter ('B').

How is this relevant to pointers? Well, let's imagine that we have an `int *`. Since an `int *` is just a number stored in memory (like everything is), we can do math on it. So lets take our pointer and add 1 to it. Now what? Now the pointer points to the _next item in memory_. footnote:[Well, actually to the next byte in memory. If your object is bigger than a byte, then you need to add more than one to the pointer to find the next one.] How cool is that?

We can use this ability to do math with pointers to create arrays. Just keep a pointer to the first item. Then, to look up the 3rd item, just add 2 to the pointer and look there. In fact, the syntax for accessing a particular item of an array (`array[index]`) is translated by the compiler into `array + (index * size-of-an-item-in-the-array)`, because `array` is just a pointer.

=== So What?

So why is all this actually useful? That's a good question, and one that I don't have a _complete_ answer for yet. What I have done so far, however, is write a program that can convert from UTF-8 to UTF-32 by reading in the UTF-8 file into memory, and then reinterpreting each of the letters as an item to write out in UTF-32, so that's pretty neat.

I hope to see you next week for more computer science!
