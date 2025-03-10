class Solution {
    
    enum Approaches: CaseIterable {
        case sort
        case counter
    }
    
    func isAnagram(_ s: String, _ t: String, approach: Approaches) -> Bool {
        switch approach {
        case .sort:
            return sortApproach(s, t)
        case .counter:
            return counterApproach(s, t)
        }
    }
    
    func sortApproach(_ s: String, _ t: String) -> Bool {
        return Array(s).sorted() == Array(t).sorted()
    }
    
    func counterApproach(_ s: String, _ t: String) -> Bool {
        return count(s) == count(t)
    }

    func count(_ s: String) -> [Character: Int] {
        var counter = [Character: Int]()
        for char in s {
            counter[char] = counter[char, default: 0] + 1
        }
        return counter
    }
}
