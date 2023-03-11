//
//  UIButton+TestHelpers.swift
//  Track MusicTests
//
//  Created by Sukhaman Singh on 3/11/23.
//

import UIKit

public func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}
 
