#lang pollen
= Math Week 4: Proof Strategies

This week in math we talked about some basic proof strategies, all based around proving implications.

=== Direct Proof

This one is the most straight forward. If you are trying to prove that `P -> Q`, you can use a direct proof by assuming `P` and deriving `Q`. Here's an example:

----
We will use a direct proof to prove that if x is odd, x + 3 is even.
Assume x is odd. This means that x = 2*k + 1, for some integer k.
Therefore, x + 3 = 2*k + 1 + 3 = 2*k + 4 = 2 * (k + 2). Since
k + 2 is an integer, we know that 2 * (k + 2) must be an even integer.
Therefore, if x is odd, x + 3 is even. Q.E.D.
----

Hooray! That wasn't too complicated.

=== Trivial Proof

Another method is to simply ignore `P` and prove that `Q` is always true, so `P -> Q` is true whether or not `P` is true. This is a trivial proof. Here's an example:

----
We will use a trivial proof to prove that if it is Sunday,
x^2 + 4x + 5 != 0. Since x^2 + 4x + 5 = x^2 + 4x + 4 + 1 =
(x + 2)^2 + 1, and (x + 2)^2 is greater than or equal to zero,
(x + 2)^2 + 1 >= 0 + 1 > 0. So x^2 + 4x + 5 != 0. Q.E.D.
----

=== Vacuous Proof

Instead of ignoring `P`, you can also choose to ignore `Q`. Remember that `P -> Q` is true when `P` is false - regardless of `Q`. So if we can prove that `P` is false, we have proven `P -> Q`. Example time:

----
We will use a vacuous proof to prove that when |sin(x)| < -(x^2),
I am wearing blue socks. Since |sin(x)| >= 0, and -(x^2) <= 0,
|sin(x)| can never be less than -(x^2), so the statement is proven.
Q.E.D.
----

=== Contrapositive Proof

Finally, if we want to prove that `P -> Q`, we can prove that `not Q -> not P` instead. Those two statements are logically equivalent, because `(not (P -> Q)) = (P and not Q) = (not Q and not (not P)) = (not Q and P) = (not (not Q -> not P))`. So this is like a direct proof - assume `not Q`, and prove `not P`. Here's an example:

----
We will use a Contrapositive proof to prove that if x > 3, then
x^2 - 4x + 4 != 0. Assume that x^2 - 4x + 4 = 0:
x^2 - 4x + 4 = (x - 2)^2 = 0. Take the square root of both
sides, showing that x - 2 = 0, so x = 2. 2 is not greater than 3,
so if x^2 - 4x + 4 = 0, x is not greater than 3. Q.E.D.
----

That's all for this week - I expect more proof techniques next week, but we'll see what happens.
