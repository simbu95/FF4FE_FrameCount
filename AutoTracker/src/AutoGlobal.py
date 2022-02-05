

class AutoGlobal(object):
    def __init__(self):
        self.Objectives=[]
        self.Flags=""
        self.KI=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        self.Locs=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        
    def parseKI(self,x):
        out = [x & 1 << b and 1 for b in range(17)]
        print(out)
        order = [3,9,6,7,10,5,8,13,0,13,1,11,12,2,14,15,16]
        self.KI = [out[i] for i in order]
        print(self.KI)
        return
        
    def parseLoc(self,low,high):
        out1 = [low & 1 << b and 1 for b in range(32)]
        out2 = [high & 1 << b and 1 for b in range(32)]
        out = out1 + out2
        print(out)
        order = [13,1,5,19,4,2,15,16,7,57,3,8,6,11,13,17,18,9,10,11,20,21,23,27,22,25,24]
        self.Locs = [out[i] for i in order]
        print(self.Locs)