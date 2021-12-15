# FF4FE_FrameCount

Lua script for counting time spent in each area during a playthrough of FF4. Intended use is for timing runs of FF4FE to see which areas a runner used most of their time. 

# Getting Started

You will need a version of snes9x that supports lua scripts. The one I personally use is snes9x 1.6 from https://github.com/gocha/snes9x-rr/releases

You can also get a version from http://tasvideos.org/EmulatorResources/Snes9x.html or find one from another repo, but I personally like the look and feel of snes9x 1.6 the most. 

I do recommend as soon as you start the emulator to go to Input, customize hotkeys, and go thru all 4 pages of hotkeys and disable any that you don't want to use, otherwise you might accidently disable graphics layers or turn on features you don't want.

# Running the Lua script. 

To start the lua script, first load a rom of FF4, then navigate to File, Lua Scripting, New Lua Script Window. 

In the new window, click browse, and then select the frames.lua script. The script will probably automatically start running, if it doesn't, press the start button.

Once running, the script will draw the word "Paused" near the top of the screen. Once you exit the select save file menu, the script will start counting the time you spend in each area. 

When you finish the run, press the stop button, and the script will automatically append to a file named frames.json in the same directory as the frames.lua script. Alternatively you can just close snes9x and the file will automatically be written to as well. 

If you would like to overwrite the file instead of append, you can edit 
file = io.open("frames.json", "a") 
to be
file = io.open("frames.json", "w")

This will cause the file to be overwritten each time, so you don't have to scroll the the end of the file and periodically delete the frames.json file.

# Features Comming Soon

abigtoe is working on a website to take a json file as input, and display everything in a tidy manner, along with other interesting breakdowns. More information coming soon. 
