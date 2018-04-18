import Foundation
import SpriteKit
@testable import SnakeEngine

class SnakeMock: Snake {
    
    var head: Head
    var direction: Direction
    var body: [SnakePart]
    
    var growCalled = false
    var updateCalled = false
    var leftCalled = false
    var rightCalled = false
    var upCalled = false
    var downCalled = false
    
    init() {
        
        self.direction = .None
        self.head = Head()
        self.body = [SnakePart]()
        self.body.append(head)
    }
    
    func grow() -> SKNode {
        
       growCalled = true
        
       return SKSpriteNode()
    }
    
    func update() {
        
       updateCalled = true
    }
}

extension SnakeMock: Controllable {
    
    public func left() {
    
        leftCalled = true
    }
    
    public func right() {
        
        rightCalled = true
    }
    
    public func up() {
        
       upCalled = true
    }
    
    public func down() {
        
       downCalled = true
    }
}
