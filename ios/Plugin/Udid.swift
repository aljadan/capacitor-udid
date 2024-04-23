import Foundation

@objc public class Udid: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
