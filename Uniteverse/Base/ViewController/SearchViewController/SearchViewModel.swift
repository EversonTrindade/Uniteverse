//
//  SearchViewModel.swift
//  Uniteverse
//
//  Created by Everson Trindade on 7/8/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

protocol SearchPresentation {
    func setViewController(viewController: SearchViewController)
    func loadView()
}

class SearchViewModel: NSObject, SearchPresentation {
    private var viewController: SearchViewController?
    
    func setViewController(viewController: SearchViewController){
        self.viewController = viewController
    }
    
    func loadView(){
        self.viewController?.navigationItem.title = "Search"
    }

}
