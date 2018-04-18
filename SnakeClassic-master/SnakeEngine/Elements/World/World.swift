import Foundation
import SpriteKit

internal protocol World: class, Controllable {
    
    weak var scene: SKScene? { get }
    var snake: Snake! { get set }
    var food: Food! { get set }
    var border: Border! { get set }
    var score: Score! { get set }
    var frame: CGRect { get }
    var collitionDetection: Collider! { get set }
    
    func update(currentTime: TimeInterval)
    func createSnake()
    func growSnake()
    func createFood()
    func snakeEatFood()
    func createBorder()
    func createScore()
    func advanceScore()
    
    func restartGame()
}
