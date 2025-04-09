import Testing
@testable import GenerateParentheses

let testcases = [
    (n: 3, expectation: ["((()))","(()())","(())()","()(())","()()()"]),
    (n: 1, expectation: ["()"]),
]

@Test(arguments: testcases)
func test(n: Int, expectation: [String]) async throws {
    #expect(Solution().generateParenthesis(n) == expectation)
}
