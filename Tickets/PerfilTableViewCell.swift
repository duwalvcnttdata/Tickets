//
//  PerfilTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 6/12/22.
//

import UIKit

class PerfilTableViewCell: UITableViewCell {

    @IBOutlet weak var tipoDatoLabel: UILabel!
    
    @IBOutlet weak var valorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
