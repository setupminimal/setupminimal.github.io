#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>So I use a third-hand 2008 Apple MacBook as my main platform for computation, and it is getting on somewhat in years. Recently, the trackpad shattered, causing a very interesting progression of problems.</p>
</div>
<div class="paragraph">
<p>Come, sit by my fire and hear the epic tale.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_duct_tape_to_the_rescue">Duct Tape to the Rescue</h3>
<div class="paragraph">
<p>When I first touched the trackpad after it shattered, I somewhat predictably impaled myself on a shard of the (plastic? something?) material. At this point certain that I would have to buy a mouse, I went to prevent the trackpad from jabbing me again. I grabbed some of my space-patterned duct tape <sup class="footnote">[<a id="_footnoteref_1" class="footnote" href="#_footnotedef_1" title="View footnote.">1</a>]</sup>, and covered over the bottom half of the trackpad.</p>
</div>
<div class="paragraph">
<p>Since it was late at night, and I still wanted to do some web-browsing, I tried using the trackpad, and guess what? Trackpads work through duct tape!</p>
</div>
<div class="paragraph">
<p>This was great news! Still, I knew to expect gradual failure - as that&#8217;s always how these things go - so I started looking into trackpad alternatives.</p>
</div>
</div>
<div class="sect2">
<h3 id="_xmonad">XMonad</h3>
<div class="paragraph">
<p>I use Linux, a free and open source <sup class="footnote">[<a id="_footnoteref_2" class="footnote" href="#_footnotedef_2" title="View footnote.">2</a>]</sup> operating system reknowned for its (sometimes inconvinient) flexibility. One thing that Linux lets you do is change the window manager - the piece of software that decides what windows look like, and how they move around the screen. Neither macOS or Windows allow you to do that, although BSD does.</p>
</div>
<div class="paragraph">
<p>Anyhow, my window manager of choice is <a href="http://xmonad.org">XMonad</a>, a window manager that does its best to always make your windows take up the full screen, and allows you to move them around with key-commands. <sup class="footnote">[<a id="_footnoteref_3" class="footnote" href="#_footnotedef_3" title="View footnote.">3</a>]</sup> XMonad is somewhat notable in that its key-commands are fully user configurable, as are the default colors, packing schemes, and almost every other aspect of the window manager.</p>
</div>
<div class="paragraph">
<p>Because XMonad is keyboard-driven, I was able to use the computer kind of normally, even without a fully-functioning trackpad. The only problem that I had was clicking on links or buttons in applications - sometimes the trackpad would "stick" and I would have to click several times to unstick it.</p>
</div>
</div>
<div class="sect2">
<h3 id="_enter_keysnail">Enter Keysnail</h3>
<div class="paragraph">
<p>That&#8217;s a mildly terrifying name for a piece of software if I ever heard one. Snails. On your keyboard.</p>
</div>
<div class="paragraph">
<p><a href="https://github.com/mooz/keysnail">Keysnail</a> is a plugin for Firefox that allows you to navigate the web using only your keyboard - it&#8217;s also very configurable. <sup class="footnote">[<a id="_footnoteref_4" class="footnote" href="#_footnotedef_4" title="View footnote.">4</a>]</sup> Even though my trackpad was still mostly working, I got used to using Keysnail.</p>
</div>
<div class="paragraph">
<p>I don&#8217;t know if it&#8217;s faster, per se, but it is certainly more ergonomic, because my hands never have to leave the home row for normal usage. This is where our tale would have ended, were it not for one final episode in the saga:</p>
</div>
<div class="paragraph">
<p>The trackpad broke completly. Or rather, whenever one clicks or scrolls with it, it moves the mouse in a random direction and right-clicks. Not terribly useful, in my opinion, but here we are.</p>
</div>
<div class="paragraph">
<p>I would have been stuck - not many applications have plugins like Keysnail - were it not for the final trick up my sleeve.</p>
</div>
</div>
<div class="sect2">
<h3 id="_xdotool">xdotool</h3>
<div class="paragraph">
<p>Linux - remember my operating system? - has a system utility called xdotool that allows one to script mouse movements and clicks into a program. I put together the following commands:</p>
</div>
<div class="listingblock">
<div class="content">
<pre>xdotool mousemove_relative -- 10 0
xdotool mousemove_relative -- 0 10
xdotool mousemove_relative -- -10 0
xdotool mousemove_relative -- 0 -10
xdotool click 3
xdotool click 1</pre>
</div>
</div>
<div class="paragraph">
<p>The first four move my mouse in each of the cardinaldirections by 10 pixels. The last two right- and left- click, respectivly. I bound each of these to a key command in XMonad - remember my window manager? - so that I could move my mouse around the screen with j, k, i, l and click with u and o. <sup class="footnote">[<a id="_footnoteref_5" class="footnote" href="#_footnotedef_5" title="View footnote.">5</a>]</sup></p>
</div>
<div class="paragraph">
<p>So with these, I have a half-workable replacement for my trackpad in those programs that don&#8217;t have more convinient keyboard shortcuts. Still, I think that I&#8217;m going to buy myself a wireless trackpad when I can - this may work, but trackpads are easier.</p>
</div>
</div>
<div class="sect2">
<h3 id="_something_completely_different">Something Completely Different</h3>
<div class="paragraph">
<p>In other news, I am $2 dollars away, as of this writing, from reaching the first goal on my <a href="https://patreon.com/daroc">Patreon</a>. That would mean a single day of college paid for by Patreons (and federal grants and loans) each month. So if you are already giving, thank you! And if not, why not pop on over there? Even $2 a month can make a big difference. Classes start next week, and I can&#8217;t wait to see you then.</p>
</div>
</div>
<div id="footnotes">
<hr>
<div class="footnote" id="_footnotedef_1">
<a href="#_footnoteref_1">1</a>. The whole Duct Tape vs. Duck Tape debate is a subject for another time. Although I do tend to use Duck Tape brand Duct Tape.
</div>
<div class="footnote" id="_footnotedef_2">
<a href="#_footnoteref_2">2</a>. Yay! Another topic for a later post!
</div>
<div class="footnote" id="_footnotedef_3">
<a href="#_footnoteref_3">3</a>. Such a window manager is called <em>tiling</em>
</div>
<div class="footnote" id="_footnotedef_4">
<a href="#_footnoteref_4">4</a>. Noticing a theme?
</div>
<div class="footnote" id="_footnotedef_5">
<a href="#_footnoteref_5">5</a>. Actually, the keys are h, t, c, n, g, and r, but since I use an alternate keyboard layout (Dvorak) (Also a topic for another time), these are in the same place as the keys above.
</div>
</div>