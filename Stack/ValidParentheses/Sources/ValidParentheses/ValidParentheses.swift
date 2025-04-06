class Solution {

    func isValid(_ s: String) -> Bool {

        let complementMap = [
            Character("]"): Character("["),
            Character("}"): Character("{"),
            Character(")"): Character("(")
        ]
        var stack: [Character] = []
        
        for c in s {
            
            let complement = complementMap[c]
            
            if let last = stack.last, complement == last {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }
        
        return stack.isEmpty
    }
}
