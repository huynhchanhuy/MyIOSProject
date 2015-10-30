//
//  TableCell.swift
//  KhoaPham-Buoi11-DemoTableView
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var cell_img: UIImageView!
    @IBOutlet weak var cell_lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
