//
//  SettingViewModel.swift
//  Uniteverse
//
//  Created by Everson Trindade on 7/8/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

protocol SettingPresentation {
    func setViewController(viewController: SettingViewController)
    func loadView()
}

class SettingViewModel: NSObject, SettingPresentation {
    private var viewController: SettingViewController?
    
    func setViewController(viewController: SettingViewController){
        self.viewController = viewController
    }
    
    func loadView(){
        self.viewController?.navigationItem.title = "Settings"
    }
}
