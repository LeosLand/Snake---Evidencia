import Foundation
import XCTest
@testable import SnakeEngine

class BorderTest: XCTestCase {
    
    var border: Border!
    
    override func setUp() {
        super.setUp()
        
        self.border = Border(frame: CGRect())
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBorderCorrectInitialValues() {
        
        XCTAssertNotNil(border.node)
        XCTAssertNotNil(border.physicsBody)
    }
}
