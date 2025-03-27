import Foundation

class Solution {
    
    enum Approach: CaseIterable {
        case twoPointers
        case complementoryDict
    }
    
    func twoSum(_ numbers: [Int], _ target: Int, approach: Approach) -> [Int] {
        switch approach {
        case .twoPointers:
            return twoPointers(numbers, target)
        case .complementoryDict:
            return complementoryDict(numbers, target)
        }
    }
    
    func twoPointers(_ numbers: [Int], _ target: Int) -> [Int] {
        var low = 0
        var high = numbers.count - 1

        while low < high {
            let lowNum = numbers[low]
            let highNum = numbers[high]
            let sum = lowNum + highNum
            if sum == target {
                return [low+1, high+1]
            } else if sum < target {
                low += 1
            } else {
                high -= 1
            }
        }
        return []
    }
    
    func complementoryDict(_ numbers: [Int], _ target: Int) -> [Int] {
        guard numbers.count > 1 else {
            return []
        }
        var dict: [Int: Int] = [:]
        for i in 0..<numbers.count {
            let com = target - numbers[i]
            if let index = dict[com] {
                return i > index ?  [index+1, i+1] : [i+1, index+1]
            } else {
                dict[numbers[i]] = i
            }
        }
        return []
    }
}
