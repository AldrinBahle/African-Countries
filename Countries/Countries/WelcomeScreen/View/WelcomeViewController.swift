//
//  WelcomeViewController.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/01.
//

import UIKit

class WelcomeViewController: UIViewController {

    // Mark: Outlet(s)
    
    @IBOutlet weak var proceedButton: UIButton!
    @IBOutlet weak var quitButton: UIButton!
    
    // MARK: Dependencies
    
    private lazy var viewModel: WelcomeViewModel = WelcomeViewModel(view: self)
    
    // MARK: Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.onViewDidLoad()
    }

        // Do any additional setup after loading the view.
}

extension WelcomeViewController: WelcomeView {
    
    func configureProceedButton(_ title: String) {
        self.proceedButton.setTitle(title,
                                    for: .normal)
        self.proceedButton.backgroundColor = .white
        SharedButton.sharedInstance.styleForButtons(button: self.proceedButton)

    }
    
    func configureQuitButton(_ title: String) {
        self.quitButton.setTitle(title,
                                 for: .normal)
        self.quitButton.backgroundColor = .white
        SharedButton.sharedInstance.styleForButtons(button: self.quitButton)
    }
}
