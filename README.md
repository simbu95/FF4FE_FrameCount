# FF4FE AutoTracker

This repo contained all the files needed for setting up an Autotracker for FF4FE. 

# Getting Started

You will need a version of snes9x that supports lua scripts. You will also need a dll for the socket libs. This repo contains snes9x 1.6 - rr (32 bit) from https://github.com/gocha/snes9x-rr/releases as well as a 32bit socket dll. 

I do recommend as soon as you start the emulator to go to Input, customize hotkeys, and go thru all 4 pages of hotkeys and disable any that you don't want to use, otherwise you might accidently disable graphics layers or turn on features you don't want. You will also need to setup your controller (or if you already had a different version of snes9x, you can copy the the conf file over to quickly get your old setup.)

# Start the WebServer

To hook the web-interface to the lua script, there is a python executable. If you would like to run the source code, it can be found on the other branch, but for this version, just double click AutoTrack.exe from the AutoTrack folder, and the webserver will automatically start.

# Running the Lua script. 

To start the lua script, first load a rom of FF4, then navigate to File, Lua Scripting, New Lua Script Window. 

In the new window, click browse, and then select the script you want to use. The script will probably automatically start running, if it doesn't, press the start button.

# Use the Tracker

After the lua script has been started, type "localhost" into your browser, and you should have the tracker automatically populate the flags, and as you run thru the seed it will automatically track any KIs you have obtained and locations you have completed. 

To start a different seed, you can just load up the new seed, start the lua script, and refresh your browser to update the flags again. 
