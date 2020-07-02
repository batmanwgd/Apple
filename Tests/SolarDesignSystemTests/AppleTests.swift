import XCTest
@testable import SolarDesignSystem

final class AppleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Apple().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
