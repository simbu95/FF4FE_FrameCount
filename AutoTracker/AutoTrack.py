import sys
import os
import signal
import argparse
import datetime
import logging
import cherrypy
from src.AutoWWW import AutoWWW
from src.AutoGlobal import AutoGlobal
from src.AutoAPI import AutoAPI
if __name__ == '__main__':
    cherrypy.log.screen = None

    #  Configure the server
    host = '0.0.0.0'
    http_port = 80
    globe = AutoGlobal()
    #  We would like to support http & https at the same time
    cherrypy.server.unsubscribe()

    #  Setup the HTTP server that will always run
    http_server = cherrypy._cpserver.Server()
    http_server.socket_port = http_port
    http_server._socket_host = host
    http_server.subscribe()

    # Setup the Cherrypy Global Configurations
    cherrypy.config.update({
        'engine.autoreload.on': False
    })


    #  Bring up the Web Front End
    ##########################################################################
    #  Setup and mount the API to cherrypy
    api_config = {
        '/': {
            'tools.sessions.on': True,
        }
    }
    
    cherrypy.tree.mount(AutoAPI(globe), '/api', api_config)

    #  Setup and mount the single page app to cherrypy
    www_cfg = {
        '/': {
            'tools.encode.encoding': 'utf-8',
            'tools.sessions.on': True,
            'tools.staticdir.root': os.path.abspath(os.getcwd())
        },
        '/scripts': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': './scripts'
        },
        '/styles': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': './styles'
        },
        '/images': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': './images'
        },
        '/fonts': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': './fonts'
        }
    }
    cherrypy.tree.mount(AutoWWW(globe), '/', www_cfg)
    print(os.path.abspath(os.getcwd()))
    
    if hasattr(cherrypy.engine, "console_control_handler"):
        cherrypy.engine.console_control_handler.subscribe()

    #  Start / run the server
    cherrypy.engine.start()
    cherrypy.engine.block()