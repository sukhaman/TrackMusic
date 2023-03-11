

import UIKit

class SplashVC: UIViewController {
    var lblTitle = TMLabel(textAlignment: .center, fontSize: 16, weight: .bold)
    var btnCreateAccount = TMButton(backgroundColor: .systemMint, title: "Create an account")
    var navigationDelegate: SignupNavigationDelegate?
    override func viewDidLoad() {
        navigationDelegate = self
        self.configureViewController()
    }
    
    
}
