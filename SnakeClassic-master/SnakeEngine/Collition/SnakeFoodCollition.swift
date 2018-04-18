import Foundation
import SpriteKit

internal class SnakeFoodCollition: Collider {
    
    weak var world: World?
    
    init(world: World) {
        self.world = world
    }
    
    func handleCollition(contactBodyA: SKPhysicsBody, contactBodyB: SKPhysicsBody) {
        
        let collitionHandler = CollitionHandler(contactBodyA: contactBodyA, contactBodyB: contactBodyB)
        
        if let orderedBodies = collitionHandler.orderedBodies {
        
            if(self.didCollidedSnakeAndFood(contactBodyA: orderedBodies.0, contactBodyB: orderedBodies.1)) {
                
                self.world?.snakeEatFood()
                
            }
        }
    }
    
    func didCollidedSnakeAndFood(contactBodyA: SKPhysicsBody, contactBodyB: SKPhysicsBody) -> Bool {
        
        var collition = false
        
        if(contactBodyA.categoryBitMask == CollitionCategory.SnakeHead.rawValue &&
            contactBodyB.categoryBitMask == CollitionCategory.Food.rawValue) {
            collition = true
        }
        
        return collition
    }
    
}
