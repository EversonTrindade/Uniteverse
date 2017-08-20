//
//  SearchTableViewCell.swift
//  Uniteverse
//
//  Created by Everson Trindade on 8/4/17.
//  Copyright © 2017 sp.ios.code.uniteverse. All rights reserved.
//

import UIKit

struct SearchTableViewCellDTO {
    var image = ""
    var title = ""
}

class SearchTableViewCell: UITableViewCell {


    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!

    func fillCell(searchTableViewCellDTO: SearchTableViewCellDTO) {
        self.cellTitle.text = searchTableViewCellDTO.title
    }
    
}
