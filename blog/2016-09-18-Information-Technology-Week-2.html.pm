#lang pollen
<div class="paragraph">
<p>This week we talked about how internet gets 'delivered' to homes, businesses, or universities - and also about boring stuff, like how to hand in assignments and use our student website hosting - I&#8217;ll just cover the interesting stuff.</p>
</div>
<div class="paragraph">
<p>In the first week, I introduced the idea that a network is a bunch of computers talking to one another. The internet is a collection of networks operating the same way. There are several different kinds of networks that make up the internet.</p>
</div>
<div class="paragraph">
<p>At the bottom, there are home networks or other small networks. These networks are connected to an Internet Service Provider (ISP), and when they need to talk to the internet, they just throw traffic towards the ISP. It&#8217;s the ISP&#8217;s job to send it to the right place and then return the replies to their customer&#8217;s networks.</p>
</div>
<div class="paragraph">
<p>ISPs are also called Tier 3 providers. That might make you think that there are two other tiers, and you&#8217;d be right. ISPs, especially local ones, don&#8217;t want to have to pay for, e.g. undersea cabling. Tier 2 providers are like an ISP&#8217;s ISP. They have larger networks, and typically <em>peer</em> with each other, meaning that they will carry eachother&#8217;s network traffic. Tier 1 providers are the largest - and you&#8217;ve probably never heard of any of them, because they sell their services to Tier 2s and 3s, and not to individual people.</p>
</div>
<div class="paragraph">
<p>All the Tier 1 networks peer with each other as well, including doing things like splitting the cost of running undersea fiber-optic cable. Some of the largest content providers (Google, etc.) connect directly to Tier 1 networks as well, so that they get the fastest possible connection to their users.</p>
</div>
<div class="paragraph">
<p>In practice, these definitions are a bit fluid and messy. There&#8217;s nothing <em>preventing</em> you from buying service directly from a Tier 1, except that they probably won&#8217;t sell it to you, and it would be pretty expensive. Similarly, there&#8217;s no reason that your ISP couldn&#8217;t also be a Tier 2 - Sprint is an example of one company that does do that.</p>
</div>
<div class="paragraph">
<p>How do all of these companies, operating their own hardware, know where to send traffic so that it gets to the right place? Your home network just sends traffic to the ISP - because that&#8217;s the only place for it to go. How does your ISP know where to send it?</p>
</div>
<div class="paragraph">
<p>Like any well-organized scheme, the answer starts with categorizing all the different networks in the internet, and giving them a number. Your local network doesn&#8217;t get one, but your ISP does. Each independent network, be it Tier 1, 2, or 3, is called an Autonomous System. Each AS gets an AS Number. These numbers are used to track and configure all the connections between the networks.</p>
</div>
<div class="paragraph">
<p>There are also numbers used to catalog the individual endpoints on the internet - your computer or your phone. These are called Internet Protocol addresses, or IP addresses. Each one is unique to a device (. . . mostly. It gets complicated.), and so if you want to send something to that device, you just have to label the message with the IP address.</p>
</div>
<div class="paragraph">
<p>When two networks reach the same physical location in order to exchange traffic, it&#8217;s called an Internet eXchange Point (IXP). At each of these exchange points runs a network router which accepts traffic onto the local network, or sends out traffic that it thinks needs to go somewhere else. Each router keeps a big list of which IP addresses belong to which network, and therefore in what direction it should send them.</p>
</div>
<div class="paragraph">
<p>So, in summary, when you send a message to something out there in the internet, you write an IP address on it. Your local router throws the message out onto your ISP&#8217;s network, which takes it to an IXP, where it gets forwarded to another network that&#8217;s going in the right direction. After some number of networks pass the message along, it reaches your destination&#8217;s ISP, which then gives it to your destination.</p>
</div>
<div class="paragraph">
<p>Stay tuned next week, when we talk about HTML and writing websites!</p>
</div>