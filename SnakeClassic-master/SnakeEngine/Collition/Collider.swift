import Foundation
import SpriteKit

internal protocol Collider {
    
    weak var world: World? { get }
    
    func handleCollition(contactBodyA: SKPhysicsBody, contactBodyB: SKPhysicsBody)
}
