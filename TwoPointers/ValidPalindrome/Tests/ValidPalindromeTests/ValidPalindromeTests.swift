import Testing
@testable import ValidPalindrome

let testcases = [
    (input: "A man, a plan, a canal: Panama", expectation: true),
    (input: "race a car", expectation: false),
    (input: " ", expectation: true)
]

@Test(arguments: testcases)
func test(testcase: (input: String, expectation: Bool)) async throws {
    #expect(Solution().isPalindrome(testcase.input) == testcase.expectation)
}
