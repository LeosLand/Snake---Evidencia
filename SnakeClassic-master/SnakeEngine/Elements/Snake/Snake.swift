import Foundation
import SpriteKit

internal protocol Snake: Controllable {
    
    var head: Head { get set }
    var body: [SnakePart] { get set}
    var direction: Direction { get set }
    
    func grow() -> SKNode
    func update()
    
}
