import Foundation
import SpriteKit

public protocol Drawable: class {

    var node: SKNode { get }
    var size: CGSize { get }
    var color: UIColor { get }
    
    func update()

}
