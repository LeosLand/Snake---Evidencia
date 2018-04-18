import SpriteKit

internal class Food: WorldElement {
    
    var node: SKNode
    var color = Colors.foodColor
    var size: CGSize
    
    let settings = SettingsFactory.buildSettings()
    
    init(position: CGPoint) {
        self.size = settings.elementSize
        self.node = SKSpriteNode(color: color, size: self.size)
        self.node.position = position
        self.node.name = name
        
        self.initPhysicsBodyCharacteristics()
    }
}

extension Food: Drawable {
    func update(){}
}

extension Food: Physical {
    
    var contactCategory: UInt32 {
        return CollitionCategory.Food.rawValue
    }
    
    var collidesWithCategory: UInt32 {
        return CollitionCategory.SnakeHead.rawValue
    }
}

extension Food: Nameable {
    
    var name: String {
        return "SnakeFood"
    }
}
