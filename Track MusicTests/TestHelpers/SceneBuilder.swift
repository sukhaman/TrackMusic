

import XCTest
@testable import Track_Music


class SceneBuilder {
    
    
    func loadSplashScreen() -> SplashVC {
        let vc = SplashVC()
        vc.beginAppearanceTransition(true, animated: false)
        vc.loadViewIfNeeded()
        return vc
    }
    
    func loadSignupScreen() -> SignupVC {
        let vc = SignupVC()
        vc.beginAppearanceTransition(true, animated: false)
        return vc
    }
}
