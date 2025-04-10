class Solution {
    
    enum Approach: CaseIterable {
        case exponential
        case linear
    }
    
    func maxArea(_ height: [Int], approach: Approach) -> Int {
        switch approach {
        case .exponential:
            return exponential(height)
        case .linear:
            return linear(height)
        }
    }
    
    func exponential(_ height: [Int]) -> Int {
        var res = 0
        for i in 0..<height.count {
            for j in i+1..<height.count {
                let area = (j - i) * min(height[i], height[j])
                res = max(res, area)
            }
        }
        return res
    }
    
    func linear(_ height: [Int]) -> Int {
        var res = 0
        var l = 0
        var r = height.count - 1
        
        while l < r {
            let area = (r - l) * min(height[l], height[r])
            res = max(res, area)
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return res
    }
}
