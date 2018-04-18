import SpriteKit
import SnakeEngineWatch
import WatchKit

class GameScene: SKScene {
    
    var world: SnakeWorld!
    var direction: Direction = .None
    
    override func sceneDidLoad() {
        
        self.world = SnakeWorld(scene: self)
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        self.world.update(currentTime: currentTime)
    }
}


extension GameScene: Controllable {
    
    func right() {
        self.direction = .Right
        self.world.right()
    }
    
    func left() {
        self.direction = .Left
        self.world.left()
    }
    
    func up() {
        self.direction = .Up
        self.world.up()
    }
    
    func down() {
        self.direction = .Down
        self.world.down()
    }
    
}


extension GameScene {
    
    func turnRight() {
        
        switch direction {
        case .Right:
            down()
        case .Down:
            left()
        case .Left:
            up()
        case .Up:
            right()
        case .None:
            up()
        }
        
    }
    
    func turnLeft() {
        
        switch direction {
        case .Right:
            up()
        case .Down:
            right()
        case .Left:
            down()
        case .Up:
            left()
        case .None:
            up()
        }
        
    }
}
