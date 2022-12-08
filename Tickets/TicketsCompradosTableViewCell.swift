//
//  TicketsCompradosTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 4/12/22.
//

import UIKit

class TicketsCompradosTableViewCell: UITableViewCell {

    @IBOutlet private weak var nombreLabel: UILabel!
    
    @IBOutlet private weak var organizadorLabel: UILabel!
    
    @IBOutlet private weak var ubicacionLabel: UILabel!
    
    @IBOutlet private weak var fechaLabel: UILabel!
    
    var ticket: Ticket?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
        asignarDatosDeEvento()
    }
    
    func asignarDatosDeEvento(){
        nombreLabel.text = ticket?.nombre
        organizadorLabel.text = ticket?.organizador
        ubicacionLabel.text = ticket?.ubicacion
        fechaLabel.text = ticket?.fecha
    }

}
