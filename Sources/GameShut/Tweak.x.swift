import Orion
import GameShutC
import UIKit

class GKNotificationBannerViewHook: ClassHook<GKNotificationBannerView> {
    func didMoveToSuperview() {
        orig.didMoveToSuperview()
        target.isHidden = true
    }
}