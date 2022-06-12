import UIKit
import Flutter
import MediaPlayer
import AVFoundation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
//        var flutter_native_splash = 1
//        UIApplication.shared.isStatusBarHidden = false
        
        GeneratedPluginRegistrant.register(with: self)
        do
        {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)

         //!! IMPORTANT !!
         /*
         If you're using 3rd party libraries to play sound or generate sound you should
         set sample rate manually here.
         Otherwise you wont be able to hear any sound when you lock screen
         */
            //try AVAudioSession.sharedInstance().setPreferredSampleRate(4096)
        }
        catch
        {
            print(error)
        }
        // This will enable to show nowplaying controls on lock screen
//        application.beginReceivingRemoteControlEvents();

        if #available(iOS 10.0, *) {
          UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}

func setNowPlayingInfo()
{
    let nowPlayingInfoCenter = MPNowPlayingInfoCenter.default()
    var nowPlayingInfo = nowPlayingInfoCenter.nowPlayingInfo ?? [String: Any]()

    let title = "title"
    let album = "album"
//    let artworkData = Data()
//    let image = UIImage(data: artworkData) ?? UIImage()
//    let artwork = MPMediaItemArtwork(boundsSize: image.size, requestHandler: {  (_) -> UIImage in
//        return image
//    })

    nowPlayingInfo[MPMediaItemPropertyTitle] = title
    nowPlayingInfo[MPMediaItemPropertyAlbumTitle] = album
//    nowPlayingInfo[MPMediaItemPropertyArtwork] = artwork

    nowPlayingInfoCenter.nowPlayingInfo = nowPlayingInfo
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromAVAudioSessionCategory(_ input: AVAudioSession.Category) -> String {
	return input.rawValue
}
