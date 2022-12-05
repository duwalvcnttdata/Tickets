//
//  InicioTicketsCompradosViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 4/12/22.
//

import UIKit

struct Ticket {
    let pelicula: String
    let organizador: String
    let ubicacion: String
    let fecha: String
}

class InicioTicketsCompradosViewController: UIViewController {
    
    let ticketsComprados = [
        Ticket(pelicula: "Wakanda Forever 1", organizador: "Cine 1", ubicacion: "Ubicacion 1", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 2", organizador: "Cine 2", ubicacion: "Ubicacion 2", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 3", organizador: "Cine 3", ubicacion: "Ubicacion 3", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 4", organizador: "Cine 4", ubicacion: "Ubicacion 4", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 5", organizador: "Cine 5", ubicacion: "Ubicacion 5", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 6", organizador: "Cine 6", ubicacion: "Ubicacion 6", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 7", organizador: "Cine 7", ubicacion: "Ubicacion 7", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 8", organizador: "Cine 8", ubicacion: "Ubicacion 8", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 1", organizador: "Cine 1", ubicacion: "Ubicacion 1", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 2", organizador: "Cine 2", ubicacion: "Ubicacion 2", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 3", organizador: "Cine 3", ubicacion: "Ubicacion 3", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 4", organizador: "Cine 4", ubicacion: "Ubicacion 4", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 5", organizador: "Cine 5", ubicacion: "Ubicacion 5", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 6", organizador: "Cine 6", ubicacion: "Ubicacion 6", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 7", organizador: "Cine 7", ubicacion: "Ubicacion 7", fecha: "dd/mm/yyyy 00:00"),
        Ticket(pelicula: "Wakanda Forever 8", organizador: "Cine 8", ubicacion: "Ubicacion 8", fecha: "dd/mm/yyyy 00:00"),
    ]

    @IBOutlet weak var ticketsCompradosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ticketsCompradosTableView.dataSource = self

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension InicioTicketsCompradosViewController: UITableViewDataSource {
    
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
        
        cell.asignarDatosDeEvento(evento: ticketsComprados[indexPath.row])
        return cell
    }
    
}
