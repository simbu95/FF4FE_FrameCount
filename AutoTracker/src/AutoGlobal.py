

class AutoGlobal(object):
    def __init__(self):
        self.Objectives=[]
        self.Flags=""
        self.KI=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        self.Locs=[]
        
    def parseKI(self,x):
        out = [x & 1 << b and 1 for b in range(17)]
        print(out)
        order = [8,10,13,0,7,5,2,3,6,1,4,11,12,9,14,15,16]
        order = [3,9,6,7,10,5,8,13,0,13,1,11,12,2,14,15,16]
        self.KI = [out[i] for i in order]
        print(self.KI)
        return