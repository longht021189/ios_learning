//
//  EurekaViewController.swift
//  ios_learning
//
//  Created by Thanh Long on 8/18/20.
//  Copyright © 2020 Thanh Long. All rights reserved.
//

import Eureka

class EurekaViewController : FormViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        present()
    }
}

// MARK: Private
extension EurekaViewController {
    private func present() {
        form +++
            Section(header: "Section 1 HEADER", footer: "Section 2 FOOTER")
            <<< NameRow() {
                $0.title = "Name Row"
                $0.placeholder = "Enter Name"
            }
            <<< PasswordRow() {
                $0.title = "Password Row"
                $0.placeholder = "Enter Password"
            }
    }
}
