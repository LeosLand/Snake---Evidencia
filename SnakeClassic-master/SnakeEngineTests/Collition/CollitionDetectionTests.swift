import XCTest
import SpriteKit
@testable import SnakeEngine

class CollitionDetectionTests: XCTestCase {
    
    var collitionDetection: Collider!
    var world: WorldMock!
    var snakeBody: SKPhysicsBody!
    var foodBody: SKPhysicsBody!
    var tailBody: SKPhysicsBody!
    var borderBody: SKPhysicsBody!
    
    override func setUp() {
        super.setUp()
        
        world = WorldMock()
        collitionDetection = CollitionDetection(world: world)
        
        snakeBody = Head().physicsBody
        foodBody = Food(position: CGPoint(x: 0, y: 0)).physicsBody
        
        tailBody = Tail(referenceSnakePart: Head()).physicsBody
        
        borderBody = Border(frame: CGRect()).physicsBody
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateFoodAfterSnakeEatsFood() {
        
        collitionDetection.handleCollition(contactBodyA: snakeBody, contactBodyB: foodBody)
        
        XCTAssertTrue(world.snakeEatFoodCalled)
        
    }
    
    func testGameRestartAfterSnakeHitsTail() {
        
        collitionDetection.handleCollition(contactBodyA: snakeBody, contactBodyB: tailBody)
        
        XCTAssertTrue(world.gameRestartedCalled)
    }
    
    func testGameRestartAfterSnakeHitsBorder() {
        
        collitionDetection.handleCollition(contactBodyA: snakeBody, contactBodyB: borderBody)
        
        XCTAssertTrue(world.gameRestartedCalled)
    }
    
    
}
