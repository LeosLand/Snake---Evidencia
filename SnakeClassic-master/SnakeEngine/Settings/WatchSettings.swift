import Foundation

public struct WatchSettings: WorldSettings {
    
    public let velocity: CGFloat = 1
    public let elementSize: CGSize = CGSize(width: 15, height: 15)
    public let timeFrameDelayer:Double = 0.15
    public let margin: CGFloat = 1.0
    
    public init() {}

}
