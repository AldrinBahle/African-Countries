//
//  CountriesButton.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/01.
//

import Foundation
import UIKit

class SharedButton: NSObject {

    static let sharedInstance = SharedButton()

    func styleForButtons(button: UIButton) {
        button.layer.cornerRadius = 21
        button.clipsToBounds = true
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 1.0
        button.layer.masksToBounds = false
    }

    private override init() {

    }
}
