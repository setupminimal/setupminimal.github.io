#lang pollen
= Trackpad Woes

So I use a third-hand 2008 Apple MacBook as my main platform for computation, and it is getting on somewhat in years. Recently, the trackpad shattered, causing a very interesting progression of problems.

Come, sit by my fire and hear the epic tale.

=== Duct Tape to the Rescue

When I first touched the trackpad after it shattered, I somewhat predictably impaled myself on a shard of the (plastic? something?) material. At this point certain that I would have to buy a mouse, I went to prevent the trackpad from jabbing me again. I grabbed some of my space-patterned duct tape footnote:[The whole Duct Tape vs. Duck Tape debate is a subject for another time. Although I do tend to use Duck Tape brand Duct Tape.], and covered over the bottom half of the trackpad.

Since it was late at night, and I still wanted to do some web-browsing, I tried using the trackpad, and guess what? Trackpads work through duct tape!

This was great news! Still, I knew to expect gradual failure - as that's always how these things go - so I started looking into trackpad alternatives.

=== XMonad

I use Linux, a free and open source footnote:[Yay! Another topic for a later post!] operating system reknowned for its (sometimes inconvinient) flexibility. One thing that Linux lets you do is change the window manager - the piece of software that decides what windows look like, and how they move around the screen. Neither macOS or Windows allow you to do that, although BSD does.

Anyhow, my window manager of choice is link:http://xmonad.org[XMonad], a window manager that does its best to always make your windows take up the full screen, and allows you to move them around with key-commands. footnote:[Such a window manager is called _tiling_] XMonad is somewhat notable in that its key-commands are fully user configurable, as are the default colors, packing schemes, and almost every other aspect of the window manager.

Because XMonad is keyboard-driven, I was able to use the computer kind of normally, even without a fully-functioning trackpad. The only problem that I had was clicking on links or buttons in applications - sometimes the trackpad would "stick" and I would have to click several times to unstick it.

=== Enter Keysnail

That's a mildly terrifying name for a piece of software if I ever heard one. Snails. On your keyboard.

link:https://github.com/mooz/keysnail[Keysnail] is a plugin for Firefox that allows you to navigate the web using only your keyboard - it's also very configurable. footnote:[Noticing a theme?] Even though my trackpad was still mostly working, I got used to using Keysnail.

I don't know if it's faster, per se, but it is certainly more ergonomic, because my hands never have to leave the home row for normal usage. This is where our tale would have ended, were it not for one final episode in the saga:

The trackpad broke completly. Or rather, whenever one clicks or scrolls with it, it moves the mouse in a random direction and right-clicks. Not terribly useful, in my opinion, but here we are.

I would have been stuck - not many applications have plugins like Keysnail - were it not for the final trick up my sleeve.

=== xdotool

Linux - remember my operating system? - has a system utility called xdotool that allows one to script mouse movements and clicks into a program. I put together the following commands:

----
xdotool mousemove_relative -- 10 0
xdotool mousemove_relative -- 0 10
xdotool mousemove_relative -- -10 0
xdotool mousemove_relative -- 0 -10
xdotool click 3
xdotool click 1
----

The first four move my mouse in each of the cardinaldirections by 10 pixels. The last two right- and left- click, respectivly. I bound each of these to a key command in XMonad - remember my window manager? - so that I could move my mouse around the screen with j, k, i, l and click with u and o. footnote:[Actually, the keys are h, t, c, n, g, and r, but since I use an alternate keyboard layout (Dvorak) (Also a topic for another time), these are in the same place as the keys above.]

So with these, I have a half-workable replacement for my trackpad in those programs that don't have more convinient keyboard shortcuts. Still, I think that I'm going to buy myself a wireless trackpad when I can - this may work, but trackpads are easier.

=== Something Completely Different

In other news, I am $2 dollars away, as of this writing, from reaching the first goal on my link:https://patreon.com/daroc[Patreon]. That would mean a single day of college paid for by Patreons (and federal grants and loans) each month. So if you are already giving, thank you! And if not, why not pop on over there? Even $2 a month can make a big difference. Classes start next week, and I can't wait to see you then.