//
//  MasalTableViewCell.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/2/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class MasaTableViewCell: UITableViewCell {
    // MARK: Properties
    
    @IBOutlet weak var masaPizza: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
