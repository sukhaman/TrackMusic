//
//  Track_MusicTests.swift
//  Track MusicTests
//
//  Created by Sukhaman Singh on 3/11/23.
//

import XCTest
@testable import Track_Music

final class Track_MusicTests: XCTestCase {
    private var sut: SplashVC!
    private var navigationDelegate: SignupNavigationDelegateSpy!
    private var navigation: SpyNavigationController!
    override func setUp() {
        sut = SceneBuilder().loadSplashScreen()
        navigationDelegate = SignupNavigationDelegateSpy()
        navigation = SpyNavigationController(rootViewController: sut)
        super.setUp()
    }
    override func tearDown() {
        navigationDelegate = nil
        super.tearDown()
    }

    func test_create_button_tapped() {
       sut.navigationDelegate = navigationDelegate
        sut.btnCreateAccount.sendActions(for: .touchUpInside)
       
        XCTAssertTrue(navigationDelegate.createAccountCalled)
    }

    func test_show_create_account_screen() {
       
       
        
        sut.btnCreateAccount.sendActions(for: .touchUpInside)
        guard let topVC = navigation.pushViewController as? SignupVC else {
           XCTFail()
            return
        }
        topVC.beginAppearanceTransition(true, animated: false)
        XCTAssertEqual(topVC.lblTitle.text, "Create new account")
    }


}
