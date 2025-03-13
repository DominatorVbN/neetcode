import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let filteredString = s.filter { $0.isLetter || $0.isNumber }
        let charArray = Array(filteredString.lowercased())
        var left = 0
        var right = charArray.count - 1
        while left < right {
            if charArray[left] != charArray[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
