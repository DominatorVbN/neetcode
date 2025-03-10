import Testing
@testable import ValidAnagram

let testcases = [
    (s: "anagram", t: "nagaram", expectation: true),
    (s: "rat", t: "car", expectation: false)
]

@Test(arguments: testcases, Solution.Approaches.allCases)
func test(testcase: (s: String, t: String, expectation: Bool), approach: Solution.Approaches) async throws {
    #expect(Solution().isAnagram(testcase.s, testcase.t, approach: approach) == testcase.expectation)
}
