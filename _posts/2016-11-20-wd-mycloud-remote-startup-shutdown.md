---
published: true
layout: post
title: WD MyCloud remote startup and shutdown (Wake on Lan + ssh)
tags: >-
  WD MyCloud remote startup shutdown Wake on Lan wol ssh halt plink putty
  quick_scripts
---

If you use a WD Nas you'll have almost certanly noticed it has no physical buttons, and the only way to shut it down is a boring procedure through its web interface. Also, there is no way to turn it on, except unplugging and re-plugging the power cable.   

**Shutting it down**  


As day passed, this operation began more and more tedious, so I made some researches and managed to ssh into the nas kernel. At this point, a simple	'halt'	was enough to send the unit to sleep, just as you turned it off using the web control panel.
At this point, I made a batch file to automate the whole process. To use it, you need to download plink, which basically is the console version of PuTTY from here [https://the.earth.li/~sgtatham/putty/latest/x86/plink.exe](https://the.earth.li/~sgtatham/putty/latest/x86/plink.exe)  

Now [download the batch from my github](https://raw.githubusercontent.com/SimoDax/simodax.github.io/master/assets/turn%20off.bat) (right click > save as..) and place it in the same folder you downloaded plink in ( **This is not optional!** ), right click on it and create a shortcut to your Desktop.
Right click again and click "Edit". Find the &lt;insert ip here> part and replace it with the actual MyCloud ip (the same you use to access the web interface). Now open the web interface and [enable ssh as seen on the WD support site](http://support.wdc.com/knowledgebase/answer.aspx?ID=14947). Go back to the batch file. Find the &lt;insert password here> part and replace it with the password you used when you enabled ssh, and save.  

Now everything you need to do to shut down the server is clicking on that shortcut.  

**NOTE:** the first time you'll use it plink will ask you if the Nas is to be trusted, you have to answer yes and hit enter. From now on the script is fully automatic and requires no interaction

For reference, here are the lines inside the .bat: 

	 @echo off
	 plink sshd@<insert ip here> -pw <insert password here> halt
	 echo The server will shutdown in 60 seconds
	 echo.
	 PAUSE
  
<br />
**Turning it on**  


Luckily the Nas supports Wake on Lan, which basically allows to turn it on remotely as long as it has the Lan cable connected. Download the [Wake On Lan Command Line](https://www.depicus.com/wake-on-lan/wake-on-lan-cmd) tool and my batch script [from my github](https://raw.githubusercontent.com/SimoDax/simodax.github.io/master/assets/turn%20on.bat) (right click > save as..). Place it in the same folder you downloaded the tool, in right click on it and create a shortcut to your Desktop. 

Now right click on the script and select "Edit". Replace the &lt;insert mac here> section with your Nas mac address, **without** the ":" and save (You can check the mac address of the device on your modem/router control panel). 

Every time you open the shortcut the script will invoke the Wolcmd tool and broadcast a wol request on your network, turning the MyCloud on.


**PIC OR IT DIDN'T HAPPEN:**

<iframe src="https://player.vimeo.com/video/223951902?byline=0&portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
