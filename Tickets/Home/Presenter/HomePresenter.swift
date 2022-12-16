//
//  HomePresenter.swift
//  Tickets
//
//  Created by Duwal Abel Varillas Castro on 14/12/22.
//

import Foundation
import UIKit

protocol HomePresenterWithViewProtocol {
    func montarArrayViewController(_ arrayUIViewController: [UIViewController])
}

class HomePresenter: HomePresenterWithViewProtocol {
    
    var view: HomeTabBarControllerProtocol?
    
    init(view: HomeTabBarControllerProtocol) {
        self.view = view
    }
    
    func montarArrayViewController(_ arrayUIViewController: [UIViewController]){
        view!.montarArrayViewController(arrayUIViewController)
    }
}
