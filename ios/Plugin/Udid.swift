import Foundation
import SAMKeychain

@objc public class Udid: NSObject {
    @objc public func getUniqueId() -> String {
        let bundleName = Bundle.main.infoDictionary!["CFBundleName"] as! String
        let accountName = Bundle.main.bundleIdentifier!

        var applicationUUID = SAMKeychain.password(forService: bundleName, account: accountName)

        if applicationUUID == nil {
            applicationUUID = UIDevice.current.identifierForVendor?.uuidString ?? ""
            let query = SAMKeychainQuery()
            query.service = bundleName
            query.account = accountName
            query.password = applicationUUID
            query.synchronizationMode = SAMKeychainQuerySynchronizationMode.no

            do {
                try query.save()
            } catch let error as NSError {
                print("SAMKeychainQuery Exception: \(error)")
            }
        }

        return applicationUUID ?? ""
    }
}
