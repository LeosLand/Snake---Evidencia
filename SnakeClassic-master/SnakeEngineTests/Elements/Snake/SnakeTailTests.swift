import XCTest
@testable import SnakeEngine

class SnakeTailTests: XCTestCase {
    
    var snakeHead: Head!
    var snakeTail: Tail!
    
    override func setUp() {
        super.setUp()
        
        self.snakeHead = Head()
        self.snakeTail = Tail(referenceSnakePart: snakeHead)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTailInitializeWithCorrectValues() {
        
        XCTAssertNotNil(snakeTail.node)
        XCTAssertEqual(snakeTail.vector, snakeHead.vector)
        XCTAssertNotNil(snakeTail.name)
        XCTAssertEqual(snakeTail.node.name, snakeTail.name)
        XCTAssertNotNil(snakeTail.physicsBody)
        XCTAssertNotNil(snakeTail.referenceSnakePart)
        XCTAssertEqual(snakeTail.direction, snakeHead.direction)
        XCTAssertNotEqual(snakeTail.node.position, snakeTail.referenceSnakePart?.node.position)
    }
    
    func testTailUpdate() {
        
        self.snakeHead.up()
        
        self.snakeHead.update()
        
        self.snakeTail.update()
        
        XCTAssertEqual(snakeHead.node.position, snakeTail.node.position)
        XCTAssertEqual(snakeHead.direction, snakeTail.direction)
    }
    
}
