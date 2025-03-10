import Testing
@testable import ValidAnagram

let testcases = [
    (s: "anagram", t: "nagaram", expectation: true),
    (s: "rat", t: "car", expectation: false)
]

@Test(arguments: testcases)
func test(testcase: (s: String, t: String, expectation: Bool)) async throws {
    #expect(Solution().isAnagram(testcase.s, testcase.t) == testcase.expectation)
}
