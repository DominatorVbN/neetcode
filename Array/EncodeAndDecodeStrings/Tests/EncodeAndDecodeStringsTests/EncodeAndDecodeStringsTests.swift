import Testing
@testable import EncodeAndDecodeStrings

let testcases = [
    ["neet","code","love","you"],
    ["we","say",":","yes"]
]

@Test(arguments: testcases) 
func test(testcase: [String]) async throws {
    let encoded = Solution().encode(testcase)
    let decoded = Solution().decode(encoded)
    #expect(decoded == testcase)
}
