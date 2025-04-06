import Testing
@testable import ValidParentheses

let testcases = [
    (s: "()", expectation: true),
    (s: "()[]{}", expectation: true),
    (s: "(]", expectation: false),
    (s: "([])", expectation: true),
]

@Test(arguments: testcases)
func test(s: String, expectation: Bool) async throws {
    #expect(Solution().isValid(s) == expectation)
}
