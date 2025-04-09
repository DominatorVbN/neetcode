class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var stack = [String]()
        var result = [String]()
        
        func backtrack(open: Int, close: Int) {
            
            if open == close, open == n {
                result.append(stack.joined())
                return
            }
            
            if open < n {
                stack.append("(")
                backtrack(open: open + 1, close: close)
                stack.removeLast()
            }
            
            if open > close {
                stack.append(")")
                backtrack(open: open, close: close + 1)
                stack.removeLast()
            }
            
        }
        backtrack(open: 0, close: 0)
        return result
    }
}
