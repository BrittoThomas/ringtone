import UIKit
import Flutter
import AVFoundation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var ringtonePlayer: AVAudioPlayer?
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    let path = Bundle.main.path(forResource: "ios_Runner_juntos.caf", ofType:nil)!
    let url = URL(fileURLWithPath: path)

    do {
        ringtonePlayer = try AVAudioPlayer(contentsOf: url)
        ringtonePlayer?.play()
    } catch {
        // couldn't load file :(
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
