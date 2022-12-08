//
//  InicioTicketsCompradosViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 4/12/22.
//

import UIKit

struct Ticket {
    let nombre: String
    let organizador: String
    let ubicacion: String
    let fecha: String
    let tipos: [TipoAsiento]
}

struct TipoAsiento {
    let nombre: String
    let simbolo: String
    let precio: Float
    let cantidad: Int
}

class InicioTicketsCompradosViewController: UIViewController {
    
    let ticketsComprados = [
        Ticket(nombre: "Wakanda Forever 1", organizador: "Cine 1", ubicacion: "Ubicacion 1", fecha: "dd/mm/yyyy 00:00", tipos: [
            TipoAsiento(nombre: "General", simbolo: "S/.", precio: 16.00, cantidad: 1),
            TipoAsiento(nombre: "Adulto Mayor", simbolo: "S/.", precio: 12.00, cantidad: 1),
            TipoAsiento(nombre: "Menor", simbolo: "S/.", precio: 14.00, cantidad: 1)
        ]),
        Ticket(nombre: "Wakanda Forever 2", organizador: "Cine 2", ubicacion: "Ubicacion 2", fecha: "dd/mm/yyyy 00:00", tipos: [
            TipoAsiento(nombre: "General", simbolo: "S/.", precio: 16.00, cantidad: 2),
            TipoAsiento(nombre: "Adulto Mayor", simbolo: "S/.", precio: 12.00, cantidad: 2),
            TipoAsiento(nombre: "Menor", simbolo: "S/.", precio: 14.00, cantidad: 2)
        ]),
        Ticket(nombre: "Wakanda Forever 3", organizador: "Cine 3", ubicacion: "Ubicacion 3", fecha: "dd/mm/yyyy 00:00", tipos: [
            TipoAsiento(nombre: "General", simbolo: "S/.", precio: 16.00, cantidad: 3),
            TipoAsiento(nombre: "Adulto Mayor", simbolo: "S/.", precio: 12.00, cantidad: 3),
            TipoAsiento(nombre: "Menor", simbolo: "S/.", precio: 14.00, cantidad: 3)
        ]),
        Ticket(nombre: "Wakanda Forever 4", organizador: "Cine 4", ubicacion: "Ubicacion 4", fecha: "dd/mm/yyyy 00:00", tipos: [
            TipoAsiento(nombre: "General", simbolo: "S/.", precio: 16.00, cantidad: 4),
            TipoAsiento(nombre: "Adulto Mayor", simbolo: "S/.", precio: 12.00, cantidad: 4),
            TipoAsiento(nombre: "Menor", simbolo: "S/.", precio: 14.00, cantidad: 4)
        ])
    ]

    @IBOutlet weak var ticketsCompradosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ticketsCompradosTableView.dataSource = self
        ticketsCompradosTableView.delegate = self
    }

}

extension InicioTicketsCompradosViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Tickets Comprados"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ticketsComprados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "celdaTicketCompradoIdentifier", for: indexPath) as? TicketsCompradosTableViewCell else {
            return TicketsCompradosTableViewCell()
            
        }
        
        cell.ticket = ticketsComprados[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detalleTicketStoryboard = storyboard?.instantiateViewController(withIdentifier: "detalleTicketStoryboard") as? DetalleTicketViewController {
            detalleTicketStoryboard.ticket = ticketsComprados[indexPath.row]
            navigationController?.pushViewController(detalleTicketStoryboard, animated: true)
        }
    }
}
