//
//  WelcomeViewModel.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/01.
//

import Foundation

final class WelcomeViewModel {
    
    // MARK: String(s)
    
    private let proceedTitle = "Proceed to countries selection"
    private let quitTitle = "QUIT"
    
    // MARK: Dependencies
    
    private weak var view: WelcomeView?
    
    // MARK: Constructor(s)
    
    init(view: WelcomeView) {
        self.view = view
    }
    
    // MARK: Attribute(s)
    
    
    
    // MARK: Method(s)
    
    func onViewDidLoad() {
        self.view?.configureProceedButton(proceedTitle)
        self.view?.configureQuitButton(quitTitle)
    }
}
