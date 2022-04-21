class Solution:
    def reverse(self, x: int) -> int:
        if x >= 0:
            s = str(x)
            snew = s[::-1]
            if int(snew) > (2**31)-1:
                return 0
            return int(snew)
        s = str(x)
        snew = s[1:]
        snew2 = "-" + snew[::-1]
        if int(snew2) < -2**31:
            return 0
        return int(snew2)
        
            
            
        
            