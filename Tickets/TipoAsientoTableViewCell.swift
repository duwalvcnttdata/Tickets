//
//  TipoAsientoTableViewCell.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 5/12/22.
//

import UIKit

class TipoAsientoTableViewCell: UITableViewCell {

    @IBOutlet weak var nombreTipoLabel: UILabel!
    
    @IBOutlet weak var precioLabel: UILabel!
    
    @IBOutlet weak var cantidadLabel: UILabel!
    
    var datosTipoAsiento: TipoAsiento?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        asignarDatosDeAsiento()
    }
    
    func asignarDatosDeAsiento() {
        nombreTipoLabel.text = datosTipoAsiento?.nombre
        precioLabel.text = "\(datosTipoAsiento?.simbolo ?? "") \(String(datosTipoAsiento?.precio ?? 0.0))"
        cantidadLabel.text = String(datosTipoAsiento?.cantidad ?? 0)
    }

}
