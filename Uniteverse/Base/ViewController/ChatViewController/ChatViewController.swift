//
//  ChatViewController.swift
//  Uniteverse
//
//  Created by Everson Trindade on 6/30/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    let viewModel = ChatViewModel() as ChatPresentation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.setViewController(viewController: self)
        self.viewModel.loadView()
    }

}
