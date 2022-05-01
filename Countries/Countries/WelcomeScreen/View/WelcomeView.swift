//
//  WelcomeView.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/01.
//

import Foundation

protocol WelcomeView: AnyObject {
    func configureProceedButton(_ title: String)
    func configureQuitButton(_ title: String)
}
