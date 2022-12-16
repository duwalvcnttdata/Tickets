//
//  DetalleTicketViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 5/12/22.
//

import UIKit

class DetalleTicketViewController: UIViewController {
    
    @IBOutlet weak var detalleTableView: UITableView!
    
    var ticket: Ticket?

    override func viewDidLoad() {
        super.viewDidLoad()
        detalleTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension DetalleTicketViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(section)
        if section == 0 {
            return 1
        } else {
            return ticket?.tipoAsiento.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print(indexPath.section)
//        print(indexPath.row)
        if indexPath.section == 0, let cell = tableView.dequeueReusableCell(withIdentifier: "detalleIdentifier", for: indexPath) as? DetalleTicketTableViewCell{
            cell.ticket = ticket
            return cell
        }
        else if indexPath.section == 1, let cell = tableView.dequeueReusableCell(withIdentifier: "tipoEntradaIdentifier", for: indexPath) as? TipoAsientoTableViewCell {
            cell.datosTipoAsiento = ticket?.tipoAsiento[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
}
