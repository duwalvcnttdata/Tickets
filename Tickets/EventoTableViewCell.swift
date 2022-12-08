//
//  EventoTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 8/12/22.
//

import UIKit

class EventoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var organizadorLabel: UILabel!
    
    @IBOutlet weak var ubicacionLabel: UILabel!
    
    @IBOutlet weak var fechaLabel: UILabel!
    
    
    var evento: Evento?

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
        nombreLabel.text = evento?.nombre
        organizadorLabel.text = evento?.organizador
        ubicacionLabel.text = evento?.ubicacion
        fechaLabel.text = evento?.fecha
    }
}
