import Foundation
import SpriteKit

internal protocol Physical {
    
    var physicsBody: SKPhysicsBody? { get }
    
    var contactCategory: UInt32 { get }
    
    var collidesWithCategory: UInt32 { get }
    
    func initPhysicsBodyCharacteristics()
    
}


