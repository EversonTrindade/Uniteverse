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
    func segmentControlAction()
    func numberOfSections() -> Int
    func numberOfRowsInSection() -> Int
    func cellForRowAtIndexPath(searchTableViewDTO: SearchTableViewDTO) -> UITableViewCell
    
}

struct SearchTableViewDTO {
    var tableView = UITableView()
    var cell = UITableViewCell()
    var indexPath = IndexPath()
}

class SearchViewModel: NSObject, SearchPresentation {
    private var viewController: SearchViewController?
    
    func setViewController(viewController: SearchViewController){
        self.viewController = viewController
    }
    
    func loadView(){
    }
    
    func segmentControlAction() {
        if self.viewController?.segmantControl.selectedSegmentIndex == 0 {
            print("First")
        }else if self.viewController?.segmantControl.selectedSegmentIndex == 1 {
            print("Second")
        }else if self.viewController?.segmantControl.selectedSegmentIndex == 2 {
            print("Third")
        }
    }
    
    //MARK: TableViewDTO
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsInSection() -> Int{
        return 2
    }
    
    func cellForRowAtIndexPath(searchTableViewDTO: SearchTableViewDTO) -> UITableViewCell {
        let cell = searchTableViewDTO.tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: searchTableViewDTO.indexPath) as! SearchTableViewCell
        
        
    }
}
