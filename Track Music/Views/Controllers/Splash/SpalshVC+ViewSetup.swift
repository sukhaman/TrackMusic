

import UIKit

extension SplashVC {
    
    // MARK: Configure view controller
    
    func configureViewController() {
     
        self.addSubviews()
        self.setAutoLayoutConstraints()
        self.assignActions()
    }
    
    // MARK: Adding subviews
    
    func addSubviews() {
        
        self.view.backgroundColor = .white
        self.view.addSubview(self.lblTitle)
        self.view.addSubview(self.btnCreateAccount)
        
        self.btnCreateAccount.setTitleColor(.black, for: .normal)
        self.lblTitle.text = "Track Music"
        self.btnCreateAccount.layer.borderColor = UIColor.systemMint.cgColor
        self.btnCreateAccount.layer.borderWidth = 2
    }
    
    // MARK: Settings auto layout constraints
    
    func setAutoLayoutConstraints() {
        
        self.lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60).isActive = true
        self.lblTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.lblTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.lblTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        self.btnCreateAccount.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        self.btnCreateAccount.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.btnCreateAccount.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.btnCreateAccount.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        self.btnCreateAccount.layer.cornerRadius = 22.5
    }
    
    func assignActions() {
        self.btnCreateAccount.addTarget(self, action: #selector(btnCreateAccountTapped(_:)), for: .touchUpInside)
    }
    
    @objc func btnCreateAccountTapped(_ sender: UIButton) {
        self.navigationDelegate?.createAccountButtonTapped()
    }
    
}

extension SplashVC: SignupNavigationDelegate {
    func createAccountButtonTapped() {
        let destVC = SignupVC()
        self.navigationController?.pushViewController(destVC, animated: true)
    }
}
