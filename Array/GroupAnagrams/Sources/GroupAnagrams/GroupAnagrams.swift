class Solution {

    enum Approach: CaseIterable {
        case sort
        case counter
    }

    func groupAnagrams(_ strs: [String], approach: Approach) -> [[String]] {
        switch approach {
        case .counter:
            return counterApproach(strs)
        case .sort:
            return sortApproach(strs)
        }
    }
    
    func sortApproach(_ strs: [String]) -> [[String]] {
        var group: [String: [String]] = [:]
        for str in strs {
            let key = String(str.sorted())
            group[key, default: []].append(str)
        }
        return group.map(\.value)
    }
    
    func counterApproach(_ strs: [String]) -> [[String]] {
        
        typealias KeyType = [Character: Int]

        func count(_ str: String) -> KeyType {
            var counter = KeyType()
            for char in str {
                counter[char] = counter[char, default: 0] + 1
            }
            return counter
        }
        
        var group: [KeyType: [String]] = [:]
        for str in strs {
            let key = count(str)
            group[key, default: []].append(str)
        }
        return group.map(\.value)
        
    }

    
}
