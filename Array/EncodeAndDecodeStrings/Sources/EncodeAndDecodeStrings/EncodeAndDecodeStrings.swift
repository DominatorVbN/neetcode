import Foundation

class Solution {

    func encode(_ strs: [String]) -> String {
        return strs.joined(separator: "#")
    }

    func decode(_ s: String) -> [String] {
        return s.components(separatedBy: "#")
    }

}