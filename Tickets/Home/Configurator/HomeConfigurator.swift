//
//  HomeTabBarConfigurator.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation
import UIKit

class HomeConfigurator{
    static func obtenerHomeTabBarController() -> UITabBarController{
        
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let tabBarStoryboardID = storyboardMain.instantiateViewController(withIdentifier: "HomeStoryboardID") as? HomeTabBarController else {
            return HomeTabBarController()
        }
        
        if let InicioStoryboardID = storyboardMain.instantiateViewController(withIdentifier: "InicioStoryboardID") as? InicioTicketsCompradosViewController {

            
            tabBarStoryboardID.vistas = [InicioStoryboardID]
            
            
            let presenter = HomePresenter(view: tabBarStoryboardID)
//            presenter.montarArrayViewController([InicioStoryboardID])

        }
//        view.vistas = [InicioStoryboardID]
//        let presenter = HomePresenter(view: tabBarStoryboardID)
        
        return tabBarStoryboardID
    }
}
