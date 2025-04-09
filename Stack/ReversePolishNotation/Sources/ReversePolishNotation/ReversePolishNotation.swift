class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for token in tokens {
            if token == "+" {
                stack.append(stack.removeLast() + stack.removeLast())
            } else if token == "-" {
                let rhs = stack.removeLast()
                let lhs = stack.removeLast()
                stack.append(lhs - rhs)
            } else if token == "*" {
                stack.append(stack.removeLast() * stack.removeLast())
            } else if token == "/" {
                let rhs = stack.removeLast()
                let lhs = stack.removeLast()
                stack.append(lhs / rhs)
            } else {
                stack.append(Int(token)!)
            }
        }
        return stack.last!
    }
}
