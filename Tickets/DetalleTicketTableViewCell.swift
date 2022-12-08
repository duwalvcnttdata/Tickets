//
//  DescripcionTicketTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 5/12/22.
//

import UIKit

class DetalleTicketTableViewCell: UITableViewCell {

    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var fechaLabel: UILabel!
    
    @IBOutlet weak var organizadorLabel: UILabel!
    
    @IBOutlet weak var direccionLabel: UILabel!
    
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
        fechaLabel.text = ticket?.fecha
        organizadorLabel.text = ticket?.organizador
        direccionLabel.text = ticket?.ubicacion
    }
    

}
