//
//  contactTableViewCell.swift
//  EasyCall
//
//  Created by Mm on 10/14/19.
//  Copyright © 2019 Mm. All rights reserved.
//

import UIKit

class contactTableViewCell: UITableViewCell {

    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var numeroLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
//    var botonAgregar: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
