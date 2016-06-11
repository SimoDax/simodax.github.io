---
published: true
layout: post
title: Greasemonkey script to autologin into your modem
tags: quick_scripts
---

Ever felt frustrated because your modem keeps asking you to login every few minutes? This script will handle the login form for you, you don't evene have to click the "login" button! Just type in your modem address et-voila, you're already logged in and ready to geek around your settings. You need to install the [Greasemonkey](https://addons.mozilla.org/it/firefox/addon/greasemonkey/) addon if you're using Firefox or [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo) if you prefer Chrome, then head to [GreasyFork](https://greasyfork.org/en/scripts/20465-zyxel-modem-autologin) and click the install button to get the script.

By default it is configured to work with zyxel modems with default admin admin username and password, but you can easily make it work for your own device!

-To change the credentials, go to **Addons>User Scripts** and open up the options for this script. On the bottom click **Edit this user script**. Look for the line

	user.value = "admin";
and change it to 

	user.value = "<your username>";
Do the same for the line

	password.value = "admin";
    
-To make it work with other modem interfaces you need to open the source code of the login webpage, find the element names of the username and password texboxes and the login button, it should not be difficult to locate it, just right click on the element you need and click **Inspect Element**.
Once you have it, find the lines 

	var user = document.getElementsByName('Loginuser')[0];
    
    var password = document.getElementsByName('LoginPassword')[0];
    
    var button = document.getElementsByName('Prestige_Login')[0];

and edit the names inside the '' to match the element names of your login page.
