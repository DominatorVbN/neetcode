class Solution {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        let sorted = nums.sorted(by: <)
        var output = [[Int]]()
        
        for i in 0..<sorted.count {
            let a = sorted[i]
            
            if i > 0, a == sorted[i-1] {
                continue
            }
            
            var l = i + 1
            var r = sorted.count - 1
            
            while l < r {
                let sum = a + sorted[l] + sorted[r]
                
                if sum < 0 {
                    l += 1
                } else if sum > 0 {
                    r -= 1
                } else {
                    output.append([a, sorted[l], sorted[r]])
                    l += 1
                    while sorted[l] == sorted[l-1], l < r {
                        l += 1
                    }
                }
            }
        }
        return output
    }
}
