#!/usr/bin/env python
# -*- coding: utf-8 -*-

#  Built in imports
import os
import sys
import datetime
import json
import threading

#  Third party imports
import cherrypy
import jinja2

# For information footer
import time

class AutoWWW(object):
    def __init__(self,globe):
        self.jinja_env = jinja2.Environment(loader=jinja2.FileSystemLoader('./'))
        self.globe=globe

    @cherrypy.expose
    def available(self):
        return "Ready!"

    @cherrypy.expose
    def index(self):
        Obj = u"<script> var Objectives = {};</script>".format(self.globe.Objectives)
        Flag = u"<script> var Flags = \"{}\";</script>".format(self.globe.Flags)
        #  Update the parameters based on the user
        params = {}
        params.update({"Objectives": Obj})
        params.update({"Flags": Flag})
        
        template = self.jinja_env.get_template("tracker.html")

        return template.render(params)