---
published: true
layout: post
title: Program the ATTiny85 to light up the Championship Thresh figure
tags: >-
  attiny85 avr libc c fire effect led thresh championship figure league of
  legends arduino project
---
As soon as I unboxed the Championship Thresh statue I got for birthday (:D) I had the idea of adding some lights to make it look better: the head material is semitransparent so I thought I could add a LED on the rear to add a fancy glow effect. The result impressed me, it was really awesome:
<img src="http://i.imgur.com/FwfpxAQ.jpg" style="width: 100%" />


However, it was just a LED attached with some tape and two cables coming from the power supply, it was quite ugly to see that mess behind the statue, so I began to make the project a bit serious: I designed a nice base for Thresh, hollowed the inside to make space for the battery and the circuitry, and added a leaning cave pillar on the back, where the LED is nestled and the cables connected to it are hidden. Once I had done the 3d model I printed it with my 3d printer:
<img src="http://i.imgur.com/6DlF4cN.jpg" style="width: 100%" />

Then I wanted to add a flame-like effect to the light, so that in the dark you could see the light coming from Thresh fluctuating, like in the in-game skin. This required me to program a microcontroller, the [ATTiny85](http://www.atmel.com/devices/ATTINY85.aspx), to have the led endlessly looping through random light intensities. You can find the source code on my [GitHub repo](https://github.com/SimoDax/thresh-glow-attiny85/tree/master)
    
After that I soldered the circuit: it consists of a voltage regulator which converts the 9v coming from the battery to a 5v output, the microcontroller and the led attached to it (both requiring 5v), in series with a current-limiting resistor. First of all you need to solder the voltage regulator and the attiny, then solder a 220k resistor on pin 5 (don't overheat the chip while doing so!). Solder the two cables to the led, make them pass through the tube and finally solder them to the microcontroller, the ground cable (connected to the shorter leg of the led) to the ground pin and the positive one to the resistor. Solder on the input and ground pins of the regulator a 9v battery clip to attach the battery and you're ready to go. You can also add a switch between the battery and the regulator to turn it on and off if you want. I suggest you to calculate your very own resistor value based on the led you're using, if you don't know how there are lots of caclulators on the net, like [this one.](http://ledcalc.com/)
<a href="/assets/img/schematic.jpg" target="_blank"><img src="/assets/img/schematic.jpg" style="width: 100%" /></a>
<img src="http://i.imgur.com/l9Pawd9.jpg" style="width: 100%" />

This is the final result: 

<iframe src="https://player.vimeo.com/video/177056749?color=ffffff&byline=0&portrait=0" style="width: 100%; height: 360px" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<blockquote class="imgur-embed-pub" lang="en" data-id="a/tP1oz" style="width: 100%"><a href="//imgur.com/tP1oz">Thresh</a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

If you have questions feel free to ask below :)
