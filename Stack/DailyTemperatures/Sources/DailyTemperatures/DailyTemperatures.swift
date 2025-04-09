import Foundation

class Solution {
    
    enum Approach: CaseIterable {
        case exponential
        case linear
    }
    
    func dailyTemperatures(_ temperatures: [Int], approach: Approach) -> [Int] {
        switch approach {
        case .exponential:
            return exponential(temperatures)
        case .linear:
            return linear(temperatures)
        }
    }
    
    func linear(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []
        for i in 0..<temperatures.count {
            while let lastIndex = stack.last, temperatures[i] > temperatures[lastIndex] {
                let lastIndex = stack.removeLast()
                result[lastIndex] = i - lastIndex
            }
            stack.append(i)
        }
        return result
    }
    
    func exponential(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        
        for i in 0..<temperatures.count {
            for j in i+1..<temperatures.count {
                if temperatures[j] > temperatures[i] {
                    result[i] = (j - i)
                    break
                }
            }
        }
        
        return result
    }
}
