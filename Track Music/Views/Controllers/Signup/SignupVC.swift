//
//  SignupVC.swift
//  Track Music
//
//  Created by Sukhaman Singh on 3/11/23.
//

import UIKit

class SignupVC: UIViewController {
    var lblTitle = TMLabel(textAlignment: .center, fontSize: 15, weight: .bold)
    var btnCreateAccount = TMButton(backgroundColor: .systemMint, title: "Create an account")
    
    override func viewDidLoad() {
        
        self.configureViewController()
    }
}
