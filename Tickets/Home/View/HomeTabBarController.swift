//
//  HomeViewController.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import UIKit

protocol HomeTabBarControllerProtocol{
    func montarArrayViewController(_ arrayViewController: [UIViewController])
}

class HomeTabBarController: UITabBarController {
    
    var presenter: HomePresenterWithViewProtocol?
    var vistas: [UIViewController]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewControllers(vistas, animated: true)
    }
    
//    override viewwill
    
}

extension HomeTabBarController: HomeTabBarControllerProtocol{
    func montarArrayViewController(_ arrayUIViewController: [UIViewController]){
        self.setViewControllers(arrayUIViewController, animated: true)
    }
    
}
