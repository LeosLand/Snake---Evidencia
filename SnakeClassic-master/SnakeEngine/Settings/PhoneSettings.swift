import Foundation

public struct PhoneSetting: WorldSettings {
    
    public let velocity: CGFloat = 1
    public let elementSize: CGSize = CGSize(width: 30, height: 30)
    public let timeFrameDelayer:Double = 0.15
    public let margin: CGFloat = 3.0
    
    public init(){}
    
}
