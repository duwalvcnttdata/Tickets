//
//  EventosViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 7/12/22.
//

import UIKit

class EventosViewController: UIViewController {
    
    var listaEventos = [
        Evento(nombre: "Wakanda Forever1", organizador: "Cineplanet1", ubicacion: "Av. Ejercito 1001", fecha: "28 - Oct - 00:01", resumen: "Resumen 1"),
        Evento(nombre: "Wakanda Forever2", organizador: "Cineplanet2", ubicacion: "Av. Ejercito 1002", fecha: "28 - Oct - 00:02", resumen: "Resumen 2"),
        Evento(nombre: "Wakanda Forever3", organizador: "Cineplanet3", ubicacion: "Av. Ejercito 1003", fecha: "28 - Oct - 00:03", resumen: "Resumen 3"),
        Evento(nombre: "Wakanda Forever4", organizador: "Cineplanet4", ubicacion: "Av. Ejercito 1004", fecha: "28 - Oct - 00:04", resumen: "Resumen 4"),
        Evento(nombre: "Wakanda Forever5", organizador: "Cineplanet5", ubicacion: "Av. Ejercito 1005", fecha: "28 - Oct - 00:05", resumen: "Resumen 5"),
        Evento(nombre: "Wakanda Forever6", organizador: "Cineplanet6", ubicacion: "Av. Ejercito 1006", fecha: "28 - Oct - 00:06", resumen: "Resumen 6"),
        Evento(nombre: "Wakanda Forever7", organizador: "Cineplanet7", ubicacion: "Av. Ejercito 1007", fecha: "28 - Oct - 00:07", resumen: "Resumen 7"),
        Evento(nombre: "Wakanda Forever8", organizador: "Cineplanet8", ubicacion: "Av. Ejercito 1008", fecha: "28 - Oct - 00:08", resumen: "Resumen 8"),
        Evento(nombre: "Wakanda Forever9", organizador: "Cineplanet9", ubicacion: "Av. Ejercito 1009", fecha: "28 - Oct - 00:09", resumen: "Resumen 9"),
        Evento(nombre: "Wakanda Forever10", organizador: "Cineplanet10", ubicacion: "Av. Ejercito 1010", fecha: "28 - Oct - 00:10", resumen: "Resumen 10"),
        Evento(nombre: "Wakanda Forever11", organizador: "Cineplanet11", ubicacion: "Av. Ejercito 1011", fecha: "28 - Oct - 00:11", resumen: "Resumen 11"),
    ]
    
    @IBOutlet weak var eventosTableView: UITableView!
    var categoriaID: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        eventosTableView.dataSource = self
        eventosTableView.delegate = self
    }
   
}

extension EventosViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaEventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "celdaEventoCompradoIdentifier") as? EventoTableViewCell else {
            return EventoTableViewCell()
        }
        cell.evento = listaEventos[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detalleEventoStoryboardID = storyboard?.instantiateViewController(withIdentifier: "detalleEventoStoryboardID") as? DetalleEventoViewController else {
            return
        }
        navigationController?.pushViewController(detalleEventoStoryboardID, animated: true)
    }
    
    
}
