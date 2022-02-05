# How to setup

Copy this entire folder into your snes9x 1.6-rr (32 bit not 64) bit folder. A download for that version of snes9x is avaliable at https://github.com/gocha/snes9x-rr/releases

Other versions of snes9x-rr could work, but you might need to find a different version of socket.dll (I could only find a 32 bit version).

Make sure to setup snes9x-rr to your liking, check the overall repo readme for more details on suggested settings

# Starting the AutoTracker

First you will need to start the webserver. You will need python installed, and you may need to install a couple extra libs (namely cherrypy and jinja2, though there may be others)

Start the webserver by running python AutoTrack.py

After the webserver is started, you can start the lua script, then in your browser, type in localhost. You should have the tracker pop up and all flags will automatically be populated.

Then just run your seed, and on every KI location clear, your current KIs will be updated. 
