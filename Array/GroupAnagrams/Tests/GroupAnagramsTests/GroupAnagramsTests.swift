import Testing
@testable import GroupAnagrams

let testcases = [
    (input: ["eat","tea","tan","ate","nat","bat"], output: [["bat"],["nat","tan"],["ate","eat","tea"]]),
    (input: [""], output: [[""]]),
    (input: ["a"], output: [["a"]])
]

@Test(arguments: testcases, Solution.Approach.allCases)
func test(testcase: (input: [String], output: [[String]]), approach: Solution.Approach) async throws {
    let result = Solution().groupAnagrams(testcase.input, approach: approach)
    let sortedResult = result
        .map({ $0.sorted() })
        .sorted(by: { $0.count < $1.count })
    let sortedOutput = testcase.output
        .map({ $0.sorted() })
        .sorted(by: { $0.count < $1.count })
    #expect(sortedResult == sortedOutput)
}
