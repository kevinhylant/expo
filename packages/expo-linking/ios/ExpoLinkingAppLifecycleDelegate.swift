import ExpoModulesCore

public class ExpoLinkingAppLifecycleDelegate: ExpoAppDelegateSubscriber {
  public func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    ExpoLinkingRegistry.shared.initialURL = url
    NotificationCenter.default.post(name: onURLReceivedNotification, object: self, userInfo: ["url": url])
    return true
  }
}
