#lang pollen
= Computer Science Midterm

Guess what!

Surprising Midterm!

Quick! What is the time complexity of this algorithm, and what is it called?:

----
def mystery(a_list):
    for i in range(len(a_list)):
        for j in range(1, i):
            if a_list[j-1] > a_list[j]:
                a_list[j-1], a_list[j] = a_list[j], a_list[j-1]
    return a_list
----

Answer: This algorithm is `O(n^2)` with respect to the length of `a_list`, and it's called bubble sort.

Explanation: Since the algorithm seems to resolve around that comparison in the center, we can make a formula showing how many times that comparison happens. `T(n) = n(n - 1)/2` happens to be that formula. Why? Because the outer loop goes `n` times, and the inner loop goes `(n - 1)/2` times on average. If we multiply everything out, we get `T(n) = 1/2n^2 - 1/2n`, which is on the order of `n^2`, so the complexity is `O(n^2)`. As for how to remember it's name, the algorithm goes through the list a bunch, and swaps adjacent items. That's what the longest line is doing. This makes items kind of 'bubble' to the top of the list.

Next! What is a doubly-linked list?

Answer: It's a list where each 'cell' of the list contains pointers to the next item, and to the previous item, making it possible to traverse the list in both directions.

Finally! Why is this post written in such a staccato style?

Answer: It matches the way my midterm was structured, and it's actually really fun to write rapid-fire responses to myself.

Postscript! Was that all that was covered on the midterm?

Answer: No! We were also asked to step through different sorting algorithms, but I don't want to torture my readers with that.

I hope to see you all next week, for another death-defying computer science class!
