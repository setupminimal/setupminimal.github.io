#lang pollen
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>This week in computer science, we talked about physics.</p>
</div>
<div class="paragraph">
<p>Our universe is governed by certain physical laws. Luckily for us, those laws are predictable, mathematical, and general. That means that we can create simulations that mimic physics with relative ease. So how <em>does</em> one go about making a physical simulation?</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="_level_of_detail">Level of Detail</h3>
<div class="paragraph">
<p>Some simulations need to be more precise than others. For a videogame, you only need to be within a few pixels of real motion. For a subatomic particle simulator, you need to be precise out to the number of decimal places that your real-life equipment uses. This is important, because everything that I am about to describe is an approximation.</p>
</div>
<div class="paragraph">
<p>Real physical laws happen in continuous time. Computers can only do a discrete amount of work in finite time. So the first corner-cutting measure we need to fit physical laws into our limited machines is this:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Have the computer take the current state of a system</p>
</li>
<li>
<p>Project that system a finite, but small, time into the future</p>
</li>
<li>
<p>Repeat</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>For example, if you are trying to determine the motion of a falling body:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Add the velocity*deltaT to the position</p>
</li>
<li>
<p>Add the acceleration*deltaT to the velocity</p>
</li>
<li>
<p>Repeat</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>This is a very good approximation for reality, but not quite perfect. This is because position and velocity change in fluid curves, while this approach approximates them with a number of straight line segments. As deltaT approaches <code>0</code>, the approximation gets better, but it will never be perfect.</p>
</div>
<div class="paragraph">
<p>The next thing that often gets cut in physics simulations is realistic collisions. In the real world, collisions are very complicated interactions, with both objects flexing slightly, and the internal components of those objects jostling around. For computer simulations, it&#8217;s often enough to simply detect whether two objects are touching, and then reflect their velocities across the plane of impact.</p>
</div>
<div class="paragraph">
<p>Games have gotten better at handling collisions in recent years, however, by introducing a 'rag-doll' model that allows parts of players and monsters to move independently.</p>
</div>
<div class="paragraph">
<p>Finally, because of the inaccurate approach to motion and collisions, the other issue that physics engines have to deal with is when one object accidentally 'clips' inside another. This is of particular interest in games, because if players can arrange the physics just right to clip through a wall, they can subvert many of a game&#8217;s challenges.</p>
</div>
<div class="paragraph">
<p>Clipping is more a result of inaccuracy in simulators, than a cause of it. Still, handling clipping is important to ensure that your simulator doesn&#8217;t allow the impossible.</p>
</div>
<div class="paragraph">
<p>That&#8217;s all for this week. This will be my final article on computer science this term - there is only one class left before finals. I hope you enjoyed CS 417 - From Programs to Computer Science</p>
</div>
</div>