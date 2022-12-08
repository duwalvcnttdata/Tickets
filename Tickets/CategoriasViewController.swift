//
//  CategoriasViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 7/12/22.
//

import UIKit

class CategoriasViewController: UIViewController {
    
    var listadoCategoria = [
        Categoria(id: 0, nombre: "Cine"),
        Categoria(id: 1, nombre: "Concierto")
    ]

    @IBOutlet weak var categoriasTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoriasTableView.dataSource = self
        categoriasTableView.delegate = self
    }
   

}

extension CategoriasViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listadoCategoria.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriaIdentifier") as? CategoriaTableViewCell else {
            return CategoriaTableViewCell()
        }
        cell.nombreCategoriaLabel.text = listadoCategoria[indexPath.row].nombre
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let eventosStoryboardID = storyboard?.instantiateViewController(withIdentifier: "eventosStoryboardID") as? EventosViewController else {
            return
        }
        eventosStoryboardID.categoriaID = listadoCategoria[indexPath.row].id
        navigationController?.pushViewController(eventosStoryboardID, animated: true)
    }
    
    
}
