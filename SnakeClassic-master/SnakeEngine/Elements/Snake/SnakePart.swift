import Foundation

internal protocol SnakePart: WorldElement, Movable {
    
    weak var referenceSnakePart: SnakePart? { get set }
    
}

