class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
        q = trunc(dividend/divisor)
        
        if q > (2**31)-1:
            return (2**31)-1
        elif q < -2**31:
            return -2**31
        else:
            return q
       
    
    
    
    
    
      
            
        