class Solution {
    
    enum Approach: CaseIterable {
        case twoPointer
        case dictionarySubtraction
    }
    
    func twoSum(_ nums: [Int], _ target: Int, approach: Approach) -> [Int] {
        switch approach {
        case .twoPointer:
            return self.twoPointer(nums, target)
        case .dictionarySubtraction:
            return self.dictionarySubtraction(nums, target)
        }
        
    }
    
    func twoPointer(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                let a = nums[i]
                let b = nums[j]
                if (a + b) == target {
                    return [i,j]
                }
            }
        }
        return [-1,-1]
    }
    
    func dictionarySubtraction(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            let num = nums[i]
            let sub = target - num
            if let existingIndex = dict[num] {
                return [existingIndex, i]
            }
            dict[sub] = i
        }
        return [-1,-1]
    }
}
