import Testing
@testable import ReversePolishNotation

let testcases = [
    (tokens: ["2","1","+","3","*"], expectation: 9),
    (tokens: ["4","13","5","/","+"], expectation: 6),
    (tokens: ["10","6","9","3","+","-11","*","/","*","17","+","5","+"], expectation: 22)
]

@Test(arguments: testcases)
func test(tokens: [String], expectation: Int) async throws {
    #expect(Solution().evalRPN(tokens) == expectation)
}
