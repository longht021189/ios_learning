//
//  ViewController.swift
//  ios_learning
//
//  Created by Thanh Long on 8/17/20.
//  Copyright © 2020 Thanh Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?
            .pushViewController(
                EurekaViewController(),
                animated: true
            )
    }
}
