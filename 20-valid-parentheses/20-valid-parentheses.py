class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        if not len(s)%2 == 0:
            return False
        for c in s:
            if c == '{' or c == '[' or c == '(':
                stack.append(c)
            else:
                if len(stack) == 0:
                    return False
                ch = stack.pop()
                if ch == '{':
                    if not c == '}':
                        return False
                if ch == '(':
                    if not c == ')':
                        return False
                if ch == '[':
                    if not c == ']':
                        return False
                    
        if len(stack) == 0:
            return True
        return False