//
//  SignupNavigationDelegateSpy.swift
//  Track MusicTests
//
//  Created by Sukhaman Singh on 3/11/23.
//

import UIKit
import XCTest
@testable import Track_Music

class SignupNavigationDelegateSpy: SignupNavigationDelegate {
    private(set) var createAccountCalled = false
    
    func createAccountButtonTapped() {
        createAccountCalled = true
    }
}
