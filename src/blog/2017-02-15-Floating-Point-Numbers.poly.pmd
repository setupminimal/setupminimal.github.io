#lang pollen
= Floating Point Numbers

Note: This was supposed to go out on Monday - my apologies for the delay. I blame blizzards.

Hello everyone! Today, I want to talk about IEEE footnote:[The International something mumble engineers mumble. link:http://iee.org[IEEE.org].] Floating Point footnote:[They are called floating point numbers to distinguish them from fixed point numbers - i.e. numbers with a set number of digits after the decimal point.] numbers, and how the specification is in some ways brilliant, and in other ways really annoying.

Our programming assignment this week is to write the beginnings of a software emulator for floating point addition. Perhaps a good place to start, then, is by understanding what a floating point number is.

Computers just represent everything as a series of 0s and 1s. Clearly, we can use this to represent whole numbers. We can also use this to represent integers, using schemes like 2's complement or sign-magnitude. But what about real numbers? Things like 0.5 or 0.337 or -45.048?

The answer: Scientific notation, base 2. That is, 0.5 would become 1.0 * 2^-1. This can be (conveniently footnote:[Sarcasm.]) written as 00111111000000000000000000000000. Here the first bit indicates whether the number is positive or negative (0 = +, 1 = -). The next 8 bits represent the exponent (here -1), and then the remaining 23 bits represent the significand, or mantissa (here 1.0).

The format has a lot of other details that save space. Since you can write any binary number in scientific notation in such a way that it starts with a 1, the IEEE calls that normal form, and drops the leading 1. Or, to capture numbers smaller than the smallest number that can be written that way (1.0 * 2^-126), they _don't_ drop the leading 1, and instead write the number in "denormalized" form, beginning with a leading 0.

So this is great! Floating point numbers lets us represent real numbers in a compact way on a computer!

=== Special Values

But not so fast! What happens if you divide 1.0 * 2^-1 by 0.0? There is no numerical result, so the answer is Not a Number. Not-Numbers, or NaNs, are represented by special values where the exponent is all 1s, and the significand is non-zero. There are also two values, positive and negative infinity, that represent the transfinite numbers.

Why is this so annoying? For one thing, there are a lot of possible NaNs, and the floating point specification divides them up into 'signaling' and 'non-signaling'. Signaling NaNs are supposed to produce errors when they occur. Non-signaling (or 'quiet') NaNs are supposed to just be ignored.

For another, since there are so many possible NaNs in each category, in order to do my assignment footnote:[Remember my assignment? This is an article about my assignment.] correctly, I had to figure out exactly what the hardware we are supposed to be emulating does, and do that. It's not enough to just try 11111111110000000000000000000000 and 01111111110000000000000000000000 and see what the result is - I also had to try 01111111100000000100000000000000 and 11111111111111111111111111111110 and so on.

Long story short? The correct answer was to take the last argument of addition that was a NaN, set the 10th bit to 1, and return that. It was still tedious to figure out, especially because the floating point standard leaves it undefined.

=== Rounding

But floating point is actually even more ambiguous than that - how are you supposed to handle rounding? Each floating point number has a limited size, so it can only represent a limited range of values. Therefore, if you get an inexact answer, how are you supposed to round it?

The IEEE specification leaves that up to individual implementors: every single computer could round things differently, if they wanted to. It does suggest a number of options (round down, round to even, etc.) but it doesn't mandate any of them.

Why is this a problem? Imagine that you are trying to reproduce a subtle bug in your program. It turns out the bug is only triggered when a number is rounded a certain way. Now, that bug might only show up on some computers.

Or imagine that you are a scientist, and publish your work so that others can reproduce it. But their computers round the other way, and that little error builds up, and now two groups of scientists have conflicting results.

=== Anyway...

Anyway, I now know more than I ever really wanted to about floating point numbers, and I suspect that you do as well. Thank you for reading.
