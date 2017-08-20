//
//  SearchViewController.swift
//  Uniteverse
//
//  Created by Everson Trindade on 6/30/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let viewModel = SearchViewModel() as SearchPresentation
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmantControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.setViewController(viewController: self)
        self.viewModel.loadView()
    }
    
    @IBAction func segmentControlAction(_ sender: Any) {
        self.viewModel.segmentControlAction()
    }
}

extension SearchViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self.viewModel.cellForRowAtIndexPath()
    }
}
