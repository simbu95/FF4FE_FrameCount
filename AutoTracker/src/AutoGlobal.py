

class AutoGlobal(object):
    def __init__(self):
        self.Objectives=[]
        self.Flags=""
        self.KI=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        self.Locs=[]
        
    def parseKI(self,x):
        out = [1 if x & (1 << (18-n)) else 0 for n in range(18)]
        out.reverse()
        order = [8,10,13,0,7,5,2,3,6,1,4,11,12,9,14,15,16,17]
        self.KI = [out[i] for i in order]
        return