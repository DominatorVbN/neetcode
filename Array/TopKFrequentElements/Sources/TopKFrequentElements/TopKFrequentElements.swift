import HeapModule

class Solution {
    
    enum Approach: CaseIterable {
        case countSort
        case heap
        case bucketSort
    }
    
    func topKFrequent(_ nums: [Int], _ k: Int, approach: Approach) -> [Int] {
        switch approach {
        case .countSort:
            return countSort(nums, k)
        case .heap:
            return heapSort(nums, k)
        case .bucketSort:
            return bucketSort(nums, k)
        }
    }
    
    private func countSort(_ nums: [Int], _ k: Int) -> [Int] {
        var counter: [Int: Int] = [:]
        for num in nums {
            counter[num] = counter[num, default: 0] + 1
        }
        let sorted = counter.sorted { $0.value > $1.value }
        let output = sorted.prefix(k).map(\.key)
        return Array(output)
    }
    
    private func heapSort(_ nums: [Int], _ k: Int) -> [Int] {
        
        struct HeapNode: Comparable {
            let value: Int
            let count: Int
            
            static func < (lhs: HeapNode, rhs: HeapNode) -> Bool {
                return lhs.count < rhs.count
            }
        }
        
        var counter: [Int: Int] = [:]
        for num in nums {
            counter[num] = counter[num, default: 0] + 1
        }
        
        var heap: Heap<HeapNode> = []
        
        for (key, value) in counter {
            let node = HeapNode(value: key, count: value)
            heap.insert(node)
            if heap.count > k {
                _ = heap.removeMin()
            }
        }
        
        return heap.unordered.map { $0.value }
    }
    
    private func bucketSort(_ nums: [Int], _ k: Int) -> [Int] {
        
        var counter: [Int: Int] = [:]
        for num in nums {
            counter[num] = counter[num, default: 0] + 1
        }
        
        var buckets = Array(repeating: Array<Int>(), count: nums.count + 1)
        
        for (num, count) in counter {
            buckets[count].append(num)
        }
        
        var output: [Int] = []
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            for num in buckets[i] {
                output.append(num)
                if output.count == k {
                    return output
                }
            }
        }
        
        return output
    }
}
