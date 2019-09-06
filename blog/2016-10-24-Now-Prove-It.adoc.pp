#lang pollen
= Now Prove It!

This week we reviewed our proof techniques by showing some interesting things about the triangle inequality, sets, and DeMorgan's law.

=== The Triangle Inequality

The triangle inequality states that for real numbers `x` and `y`, `|x + y| ≤ |x| + |y|`. We can prove this by looking at a few cases: footnote:[I'm not going to structure it like a formal proof, because, quite frankly, I'm tired of them and I don't think it helps you to understand what's going on.]

 - If both x and y are positive, then `x + y = |x + y| ≤ |x| + |y| = x + y`, which you can see is true because `x + y ≤ x + y`.
 - If x is positive and y is negative, then `|x + y| ≤ |x| + |y|` because `|x + y| ≤ x`.
 - If x is negative and y is positive, the same logic applies.
 - If both x and y are negative, then `-x - y = |x + y| ≤ |x| + |y| = -x - y` because `-x - y = -x - y`.

Why is it called the _triangle_ inequality? Because this can also be shows using triangles. `|x|` is the length of one side, `|y|` of the other, and `|x + y|` is the length of the hypotenuse. Clearly, if all of the edges of the triangle are to connect, this equality must hold true. footnote:[Yes, this means that the triangle inequality was derived using vector math, but since `≤` isn't well defined for vectors, it's expressed in terms of their lengths.] This doesn't seem super exciting, but it turns out to show up a lot when proving other things, so I wanted to mention it so that the tool would be in your head, to mix a metaphor.

=== DeMorgan's Law

The other really amazing part of this week was actually something my professor just mentioned offhand. First, some background. If you have a logical statement (remember those) `not (P and Q)`, that's equivalent to `not P or not Q`. That's DeMorgan's law, as it applies to logic. Also remember that sets have a _complement_, that is, the set of all things not in the first set. Okay. Now comes the mind-shaking part that my professor wrote on the board. `The complement of (A intersection B) = The complement of A union the complement of B`. footnote:[He used actual symbols, of course, but I heard from some people that the union and intersection symbols weren't showing up for them. I'm working on it.] Then, the professor called that DeMorgan's law.

Wow.

This one law applies to both sets and logic? If you look at the two examples, those seem similar. Replace `not` with `complement`, `or` with `union` and `and` with `intersection`. Does this reveal a deeper symmetry's between logic and set theory? Maybe! I'm not yet sufficiently knowledgeable, so I don't know why this similarity occurs or how to prove it, although I have some ideas involving looking at membership of statements in sets . . .

Regardless, it was an exiting realization. I hope you join me next week for another bout of math!
