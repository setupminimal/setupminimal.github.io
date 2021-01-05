#lang pollen
= Computer Science Week 3: The Worst Possible Time

This week was awesome! Which might seem to be in contravention of the title, but the title really _is_ what we learned about.

So in Computer Science we deal a lot with algorithms: doing something in a certain way to produce a certain result. Computer Scientists wanted a way to compare different algorithms to see how long they take. This week we talked about how one compairs algorithms. Let's look at two ways to sort a list as an example.

=== Bubble Sort

This sorting method works by going back and forth across a list, and swapping adjacent pairs of items if they are out of place. This makes the items "bubble" to the top. Here's an example.

----
list = [11, 5, 2, 1]
After the first step: (5 is less than 11)
[5, 11, 2, 1]
2nd: (2 is less than 11)
[5, 2, 11, 1]
3rd: (1 is less than 11)
[5, 2, 1, 11]
4th: (2 is less than 5)
[2, 5, 1, 11]
5th: (1 is less than 5)
[2, 1, 5, 11]
6th: (1 is less than 2)
[1, 2, 5, 11]

Ta da! The list is in order!
----

And here is how bubble sort is written in python:

----
def bubble_sort(alist):
    for i in range(len(alist) - 1):
        for j in range(len(alist) - i - 1):
            if alist[j] > alist[j+1]:
               alist[j], alist[j+1] = alist[j+1], alist[j]
    return alist
----

Let's take a look at another method:

=== Quicksort

Quicksort works by taking a list, separating it into pieces, sorting each of the pieces, and putting it back together. It's easiest to think of quicksort like this:

 - A list with one element is sorted
 - Two lists that are sorted, where one list has only smaller things, and one list has only bigger things get's sorted by combining the lists.

Here's an example:

----
list = [11, 5, 12, 1, 3]

Step 1:
separate into [11, 12] and [5, 1, 3]
[11, 12] is sorted.
[5, 1, 3] is not sorted yet.

Step 2:
separate [5, 1, 3] into [5] and [1, 3]
[5] is sorted.
[1, 3] is sorted.

Finally:
[1, 3] + [5] + [11, 12] is [1, 3, 5, 11, 12]
----

And here's one way to write quicksort in python:

----
def quicksort(alist):
    if len(alist) <= 1:
       return alist
    pivot = alist[0]
    alist = alist[1:]
    return quicksort(filter(lambda x: x < pivot, alist)) + \
           [pivot] + \
           quicksort(filter(lambda x: x >= pivot, alist))
----

Now how do we go about comparing bubble sort to quicksort? What things about them do we want to compare? In class we talked about . . . 

=== Time Complexity

So first of all, let's talk about what we mean by 'time'. Different computers do different things at different speeds. Calculating the literal time an algorithm would take be difficult. Instead, we count the number of steps in the algorithm (roughly), as a function of the size of the input, `n`. This is called the algorithm's time complexity.

Bubble sort:

Bubble sort goes over the whole list once for every item in the list, 'bubbling' it to the top. The number of comparisons and switches it makes is then the size of the list squared, `n^2`. It does this regardless of the contents of the list, so this is it's worst-case time and it's best-case time.

Quicksort:

Quicksort breaks the list into two pieces each time, sorts them, and puts it back together. So if it breaks the list in the worst possible way, into `[pivot]` and `[everything else]`, it also ends up going through the list `n^2` times - it breaks the list into `n` pieces, and then goes through the pieces each time, which also requires `n` steps - this is the same as bubble sort. On the other hand, if it breaks the list in the best possible way, the list splits evenly into 2 pieces, and so it only takes `n * log(n)` footnote:[That's `log` base `2`, for those keeping score back home.] steps.

So if the list is already sorted, both quicksort and bubble sort take `n^2` steps. If the list is shuffled into a random order, quicksort takes (on average) `n * log(n)` steps, and bubble sort still takes `n^2` steps. It's funny that quicksort is slower when the list is already sorted, but the computer can't tell that it's sorted without doing some amount of work that would slow it down when it's not sorted.

There are other things about the algorithms you can compare (How much memory do they take? Can they work in parallel? How much power do they take? Do they need set-up time?), but time complexity - along with a bunch of examples - is all that we talked about this week. See you next week for more algorithmic complexity, and other things! One cool resource you might check out while waiting with bated breath to hear from me again is link:https://www.youtube.com/watch?v=kPRA0W1kECg[this video that visualizes sorting algorithms].
