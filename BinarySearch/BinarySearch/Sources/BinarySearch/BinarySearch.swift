import Foundation

class Solution {
    
    enum Approach: CaseIterable {
        case sequential
        case recursive
    }
    
    func search(_ nums: [Int], _ target: Int, approach: Approach) -> Int {
        switch approach {
        case .sequential:
            return sequential(nums, target)
        case .recursive:
            return recursive(nums, target)
        }
    }
    
    func sequential(_ nums: [Int], _ target: Int) -> Int {
        
        func binary(l: Int, r: Int) -> Int {
            guard l <= r else {
                return -1
            }
            let mid = (l + r) / 2
            let num = nums[mid]
            if num < target {
                return binary(l: mid + 1, r: r)
            } else if num > target {
                return binary(l: l, r: mid - 1)
            } else {
                return mid
            }
        }
        return binary(l: 0, r: nums.count - 1)
    }
    
    func recursive(_ nums: [Int], _ target: Int) -> Int {
        
        var l = 0
        var r = nums.count - 1
        
        while l <= r {
            let mid = (l+r)/2
            let num = nums[mid]
            
            if num < target {
                l = mid + 1
            } else if num > target {
                r = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
}
