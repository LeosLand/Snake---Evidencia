import Foundation
import SpriteKit

internal class CollitionHandler {
    
    typealias OrderedBodies = (SKPhysicsBody, SKPhysicsBody)
    
    var orderedBodies: OrderedBodies!
    
    init(contactBodyA: SKPhysicsBody, contactBodyB: SKPhysicsBody) {
       
        self.orderedBodies = sortBodies(contactBodyA: contactBodyA, contactBodyB: contactBodyB)
    }
    
    public func sortBodies(contactBodyA: SKPhysicsBody, contactBodyB: SKPhysicsBody) -> OrderedBodies {
        
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        
        if (contactBodyA.categoryBitMask < contactBodyB.categoryBitMask)
        {
            firstBody = contactBodyA;
            secondBody = contactBodyB;
        }
        else
        {
            firstBody = contactBodyB;
            secondBody = contactBodyA;
        }
        
        return (firstBody, secondBody)
    }
    
}
