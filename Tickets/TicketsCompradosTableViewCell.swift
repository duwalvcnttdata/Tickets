//
//  TicketsCompradosTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 4/12/22.
//

import UIKit

class TicketsCompradosTableViewCell: UITableViewCell {

    @IBOutlet weak var nombrePeliculaLabel: UILabel!
    
    @IBOutlet weak var organizadorLabel: UILabel!
    
    @IBOutlet weak var ubicacionLabel: UILabel!
    
    @IBOutlet weak var fechaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func asignarDatosDeEvento(evento: Ticket){
        nombrePeliculaLabel.text = evento.pelicula
        organizadorLabel.text = evento.organizador
        ubicacionLabel.text = evento.ubicacion
        fechaLabel.text = evento.fecha
    }

}
