import Foundation


internal enum CollitionCategory: UInt32 {
    
    case SnakeHead = 1
    case Food = 2
    case SnakeTail = 4
    case Border = 8
    case NoCollition = 1000
    
}
