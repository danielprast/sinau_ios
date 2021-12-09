import XCTest
@testable import LearnUnitTest

final class LearnUnitTestTests: XCTestCase {
    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LearnUnitTest().text, "Hello, World!")
    }
    
    func DISABLED_testHaterHaveABadDay() {
        
    }
    
    func test_Hater_AfterHavingAGoodDay_ShouldNotBeHating() {
        var hater = Hater()
        hater.hadAGoodDay()
        XCTAssertEqual(hater.hating, false, "😇 should not be hating")
        //XCTAssert(hater.hating, true, "😇 should not be hating")
    }
    
    func testHaterStartsNicely() {
        // given
        var hater = Hater()
        
        // when
        hater.hadABadDay()
        
        // then
        XCTAssertTrue(hater.hating)
    }
    
    func testHaterHappyAfterHaveAGoodDay() {
        var hater = Hater()
        hater.hadAGoodDay()
        XCTAssertFalse(hater.hating)
    }
    
    func testPreviewDataOrigin() {
        //let dataPreview = DataOriginPreview()
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
