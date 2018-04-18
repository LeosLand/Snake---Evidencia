import Foundation
import SpriteKit

internal protocol WorldElement: Drawable, Physical {
    
}

extension WorldElement {
    
    func initPhysicsBodyCharacteristics() {
        
        self.node.physicsBody = SKPhysicsBody(rectangleOf: self.size)
        self.node.physicsBody?.isDynamic = true
        self.node.physicsBody?.categoryBitMask = self.contactCategory
        self.node.physicsBody?.contactTestBitMask = self.collidesWithCategory
        self.node.physicsBody?.collisionBitMask = 0
    }
    
    var physicsBody: SKPhysicsBody? {
        return self.node.physicsBody
    }
    
}
