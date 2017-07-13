//
//  ChatViewMoel.swift
//  Uniteverse
//
//  Created by Everson Trindade on 7/8/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

protocol ChatPresentation{
    func setViewController(viewController: ChatViewController)
    func loadView()
}

class ChatViewModel: NSObject, ChatPresentation{
    private var viewController: ChatViewController?
    
    func setViewController(viewController: ChatViewController) {
        self.viewController = viewController
    }
    
    func loadView() {
        self.viewController?.navigationItem.title = "Chat"
    }

}
