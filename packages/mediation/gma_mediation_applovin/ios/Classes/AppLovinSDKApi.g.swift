// Autogenerated from Pigeon (v17.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol AppLovinSDKApi {
  func setHasUserConsent(hasUserConsent: Bool) throws
  func setIsAgeRestrictedUser(isAgeRestrictedUser: Bool) throws
  func setDoNotSell(doNotSell: Bool) throws
  func initializeSdk(sdkKey: String) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class AppLovinSDKApiSetup {
  /// The codec used by AppLovinSDKApi.
  /// Sets up an instance of `AppLovinSDKApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: AppLovinSDKApi?) {
    let setHasUserConsentChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_applovin.AppLovinSDKApi.setHasUserConsent", binaryMessenger: binaryMessenger)
    if let api = api {
      setHasUserConsentChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let hasUserConsentArg = args[0] as! Bool
        do {
          try api.setHasUserConsent(hasUserConsent: hasUserConsentArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setHasUserConsentChannel.setMessageHandler(nil)
    }
    let setIsAgeRestrictedUserChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_applovin.AppLovinSDKApi.setIsAgeRestrictedUser", binaryMessenger: binaryMessenger)
    if let api = api {
      setIsAgeRestrictedUserChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let isAgeRestrictedUserArg = args[0] as! Bool
        do {
          try api.setIsAgeRestrictedUser(isAgeRestrictedUser: isAgeRestrictedUserArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setIsAgeRestrictedUserChannel.setMessageHandler(nil)
    }
    let setDoNotSellChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_applovin.AppLovinSDKApi.setDoNotSell", binaryMessenger: binaryMessenger)
    if let api = api {
      setDoNotSellChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let doNotSellArg = args[0] as! Bool
        do {
          try api.setDoNotSell(doNotSell: doNotSellArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setDoNotSellChannel.setMessageHandler(nil)
    }
    let initializeSdkChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_applovin.AppLovinSDKApi.initializeSdk", binaryMessenger: binaryMessenger)
    if let api = api {
      initializeSdkChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let sdkKeyArg = args[0] as! String
        do {
          try api.initializeSdk(sdkKey: sdkKeyArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      initializeSdkChannel.setMessageHandler(nil)
    }
  }
}