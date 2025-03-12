class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var f = 1
        var b = 1
        var forwardProduct: [Int] = []
        var backwardProduct: [Int] = []
        for i in 0..<nums.count {
            let r = (nums.count - 1) - i
            f = f * nums[i]
            b = b * nums[r]
            forwardProduct.append(f)
            backwardProduct.append(b)
        }
        backwardProduct = backwardProduct.reversed()
        var output: [Int] = []
        for i in 0..<nums.count {
            let left = i > 0 ? forwardProduct[i - 1] : 1
            let right = (i + 1) < nums.count ? backwardProduct[i+1] : 1
            output.append(left * right)
        }
        return output
    }
}