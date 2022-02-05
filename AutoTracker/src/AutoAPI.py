# -- coding: utf-8 --


#  Built in imports
import os
import datetime
import json
import threading
import socketserver
import ipdb

#  Third party imports
import cherrypy

global globe

class MyTCPHandler(socketserver.BaseRequestHandler):

    def handle(self):
        # self.request is the TCP socket connected to the client
        while True:
            self.data = self.request.recv(1024).strip()
            x=json.loads(self.data.decode('utf-8'))
            print("{} wrote:".format(self.client_address[0]))
            print(json.dumps(x, sort_keys=True, indent=4))
            global globe
            x=json.loads(self.data.decode('utf-8'))
            if 'metadata' in x:
                globe.Objectives = x['metadata']['objectives']
                globe.Flags = x['metadata']['flags']
            elif 'KI' in x:
                globe.parseKI(x['KI'])


class ThreadedTCPServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    pass
        
class AutoAPI(object):
    exposed = True
    _cp_config = {
        'tools.caching.on': False,
        'tools.caching.delay': 0,
        'tools.trailing_slash.on': False
    }
    HOST, PORT = "localhost", 54321
    server=ThreadedTCPServer((HOST, PORT), MyTCPHandler)
    server_thread  = threading.Thread(target=server.serve_forever)
    server_thread.daemon = True
    server_thread.start()
    
    def __init__(self,glob):
        global globe
        globe=glob
        self.globe=globe

    @cherrypy.expose
    @cherrypy.tools.json_out()
    def query(self):
        global globe
        x={}
        x['KI'] = globe.KI
        return x

