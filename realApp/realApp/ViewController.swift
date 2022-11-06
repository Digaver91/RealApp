//
//  ViewController.swift
//  realApp
//
//  Created by Dmytro Gavrylov on 03.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var dataFromSwitch = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.shared.postAction()
    }
}

