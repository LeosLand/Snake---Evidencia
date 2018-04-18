import Foundation

public class SettingsFactory {
    
    public static func buildSettings() -> WorldSettings {
        #if os(iOS)
            return PhoneSetting()
        #elseif os(watchOS)
            return WatchSettings()
        #endif
    }
}
