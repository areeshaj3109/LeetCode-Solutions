class Solution:
    def addBinary(self, a: str, b: str) -> str:
        a1 = 0
        b1 = 0
        
        for i in range(len(a)-1, -1, -1):
            if a[i] == "1":
                a1 += 2**(len(a)-i-1)
        for i in range(len(b)-1, -1, -1):
            if b[i] == "1":
                b1 += 2**(len(b)-i-1)
        
        return bin(a1+b1)[2:]
                
        
        