import Foundation

public protocol Movable {
    
    var vector: CGVector { get set }
    
    var direction: Direction { get set }
    
    func move(vector: CGVector)
    

}
