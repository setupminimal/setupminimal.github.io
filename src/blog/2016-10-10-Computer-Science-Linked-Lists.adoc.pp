#lang pollen
= Computer Science: Linked Lists

This week in computer science, we talked about linked lists as a precursor to talking about trees next week. What is a linked list? I'm so glad you asked.

=== Cells

A linked list is built out of cells. Each cell looks like this:

----
+------+
| data |
+------+
| next |
+------+
----

`data` contains something, like `3` or `"apple"`. `next` contains a _pointer_ to the next item in the list. A pointer is just the location of something inside your computer's memory. So if we had this cell:

----
+------+
| 'pi' |
+------+
| 3477 |
+------+
----

Then this would tell us that the current item in the list is `'pi'`, and that the next item is located at location `3477` in memory. We can then follow that pointer to a new cell, and then follow it's pointer, et cetera. Thus, a list is formed by hooking together cells in memory.

In order to keep track of the whole list, you just have to keep track of the first element, and then you can follow the trail of breadcrumbs to reach any element you need.

This makes what's called a _singly-linked list_, because each cell only has one link: to the next item in the list. This is simple and small, but it leads to a lot of unfortunate corner cases. For example, if you need to add something to the end of the list, then you have to walk down the entire list first to add the new item.

=== Doubly-linked Lists

So there's another style of linked list that uses cells that look like this:

----
+------+
| prev |
+------+
| data |
+------+
| next |
+------+
----

These cells contain pointers to both the previous cell and the next cell. This is useful, because then you can walk both backwards and forwards, which makes a lot of list operations faster and simpler. The price you pay is that the cells are slightly larger, so a list with the same elements takes up more memory.

In a doubly-linked list, you keep track of both the head and tail of the list, and can move forward and backward. This makes doing things at either end of the list fast, which is important for Queues or pipelines, but what about the middle of the list?

=== Skip Lists

We didn't cover these in class, but it seemed to be a logical next step, so I did some independent research. Skip Lists take this concept of being faster by adding additional pointers, and move it to the next level. A skip list has cells that have not only pointers to the next datum and previous datum, but also to the 2nd next and 2nd previous datum, the 4th next and 4th previous, and so on. Not all the cells need to have all of these pointers either. If you're trying to reach the 13th node, you can skip 8, then 4, then 1. To reach the 15th node, you might skip 16 and then back 1.

Because fewer steps are needed to reach a particular node, skip lists can be much faster for looking things up than an ordinary linked list. Unfortunately, since they require more bookkeeping, they take more memory, and can be slower to insert things into.

=== Next Week

The professor has said that next week we will be taking a look at Trees, which are pretty cool. The same idea of linking together nodes is used, just linking them into a different shape. See you all then!
