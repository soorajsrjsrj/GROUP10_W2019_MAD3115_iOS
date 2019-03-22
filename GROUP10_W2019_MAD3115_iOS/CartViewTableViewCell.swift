//
//  CartViewTableViewCell.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-22.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class CartViewTableViewCell: UITableViewCell {
    @IBOutlet weak var itemId: UILabel!
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemQuantity: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
