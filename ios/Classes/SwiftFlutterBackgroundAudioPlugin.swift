import Flutter
import UIKit
import AVFoundation

public class SwiftFlutterBackgroundAudioPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_background_audio", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterBackgroundAudioPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "setCategory":
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                result(nil)
            } catch {
                result(FlutterError(code: "\(error)", message: error.localizedDescription, details: nil))
            }

        case "setCategoryMixWithOthers":
            do {
                try AVAudioSession.sharedInstance().setCategory(
                    AVAudioSession.Category.playback,
                    options: [AVAudioSession.CategoryOptions.mixWithOthers]
                )
                result(nil)
            } catch {
                result(FlutterError(code: "\(error)", message: error.localizedDescription, details: nil))
            }
            
        case "setCategoryDuckOthers":
            do {
                try AVAudioSession.sharedInstance().setCategory(
                    AVAudioSession.Category.playback,
                    options: [AVAudioSession.CategoryOptions.duckOthers]
                )
                result(nil)
            } catch {
                result(FlutterError(code: "\(error)", message: error.localizedDescription, details: nil))
            }

        case "setCategoryDefaultToSpeaker":
            do {
                try AVAudioSession.sharedInstance().setCategory(
                    AVAudioSession.Category.playback,
                    options: [AVAudioSession.CategoryOptions.defaultToSpeaker]
                )
                result(nil)
            } catch {
                result(FlutterError(code: "\(error)", message: error.localizedDescription, details: nil))
            }

        case "setActive":
            do {
                try AVAudioSession.sharedInstance().setActive(true)
                result(nil)
            } catch {
                result(FlutterError(code: "\(error)", message: error.localizedDescription, details: nil))
            }
            
            
        default:
            break
        }
  }
}
