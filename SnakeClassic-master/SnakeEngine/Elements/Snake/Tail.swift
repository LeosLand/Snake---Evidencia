import Foundation
import SpriteKit

internal class Tail: SnakePart {
    
    var node: SKNode
    var color = Colors.snakeColor
    var vector: CGVector
    var direction: Direction
    var size: CGSize
    weak var referenceSnakePart: SnakePart?
    
    let settings = SettingsFactory.buildSettings()
    
    public init(referenceSnakePart: SnakePart) {
        self.referenceSnakePart = referenceSnakePart
        self.size = settings.elementSize
        self.node = SKSpriteNode(color: color, size: size)
        self.direction = referenceSnakePart.direction
        self.node.position = referenceSnakePart.node.position.pointFromCurrentWithDistance(distance: settings.distance,
                                                                                           angle: CGFloat(self.direction.inverseAngle))
        self.vector = referenceSnakePart.vector
        self.node.name = name
        self.initPhysicsBodyCharacteristics()
    }
}

extension Tail: Drawable {
    
    func update() {
        guard let reference = self.referenceSnakePart else {
            return
        }
        self.direction = reference.direction
        self.node.position = reference.node.position
    }
}

extension Tail: Movable {
    
    public func move(vector: CGVector) {
        
        self.vector = vector
    }
}

extension Tail: Physical {
    
    public var physicsBody: SKPhysicsBody? {
        return self.node.physicsBody
    }
    
    public var contactCategory: UInt32 {
        return CollitionCategory.SnakeTail.rawValue
    }
    
    public var collidesWithCategory: UInt32 {
        return CollitionCategory.SnakeHead.rawValue
    }

}

extension Tail: Nameable {
    
    public var name: String {
        return "SnakeTail"
    }
}
