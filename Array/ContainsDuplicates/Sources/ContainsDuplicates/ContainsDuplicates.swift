// The Swift Programming Language
// https://docs.swift.org/swift-book
class Solution {
    
    enum Approach: CaseIterable {
        case set
        case setCount
        case counter
        case disctionaryPresence
    }
    
    func setCountApproach(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
    
    func setApproach(_ nums: [Int]) -> Bool {
        // Set approach
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return true
            } else {
                set.insert(num)
            }
        }
        return false
    }
    
    func counterApproach(_ nums: [Int]) -> Bool {
        // Counter Approach
        var counter = [Int: Int]()
        for num in nums {
            if let existingCount = counter[num] {
                let newCount = existingCount + 1
                if newCount >= 2 {
                    return true
                }
                counter[num] = newCount
            } else {
                counter[num] = 1
            }
        }
        return false
    }
    
    func dictionaryPresenceApproach(_ nums: [Int]) -> Bool {
        // Dictionary presence approach
        var dict = [Int:Bool]()
        for num in nums {
            if dict[num] != nil {
                return true
            } else {
                dict[num] = true
            }
        }
        return false
    }
    
    func containsDuplicate(_ nums: [Int], approach: Approach) -> Bool {
        switch approach {
        case .setCount:
            return setCountApproach(nums)
        case .set:
            return setApproach(nums)
        case .counter:
            return counterApproach(nums)
        case .disctionaryPresence:
            return dictionaryPresenceApproach(nums)
        }
    }
}
