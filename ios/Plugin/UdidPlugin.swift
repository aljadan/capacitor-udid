import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(UdidPlugin)
public class UdidPlugin: CAPPlugin {
    private let implementation = Udid()

   @objc func getUdid(_ call: CAPPluginCall) {
        let udid = implementation.getUniqueId()
        if udid.isEmpty {
            call.reject("UDID not available")
        } else {
            call.resolve([
                "value": udid
            ])
        }
    }
}
