//
//  HomeViewModel.swift
//  Uniteverse
//
//  Created by Everson Trindade on 6/30/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

protocol HomePresentation {
    func setViewController(viewController: HomeViewController)
    func loadView()
}

class HomeViewModel: NSObject, HomePresentation {
    private var viewController: HomeViewController?
    
    func setViewController(viewController: HomeViewController){
        self.viewController = viewController
    }
    
    func loadView(){
        self.viewController?.navigationItem.title = "Home"
    }

}
