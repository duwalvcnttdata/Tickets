//
//  DescripcionTicketTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 5/12/22.
//

import UIKit

class DescripcionTicketTableViewCell: UITableViewCell {

    @IBOutlet weak var nombrePeliculaLabel: UILabel!
    
    @IBOutlet weak var fechaLabel: UILabel!
    
    @IBOutlet weak var direccionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
