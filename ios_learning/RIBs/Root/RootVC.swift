//  File name   : RootVC.swift
//
//  Author      : Thanh Long
//  Created date: 8/17/20
//  Version     : 1.00
//  --------------------------------------------------------------
//  Copyright © 2020 Thanh Long. All rights reserved.
//  --------------------------------------------------------------

import RIBs
import UIKit

protocol RootPresentableListener: class {
    // todo: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class RootVC: UIViewController, RootPresentable, RootViewControllable {
    private struct Config {
    }

    /// Class's public properties.
    weak var listener: RootPresentableListener?

    // MARK: View's lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        visualize()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        localize()
    }

    /// Class's private properties.
}

// MARK: View's event handlers
extension RootVC {
    override var prefersStatusBarHidden: Bool {
        return false
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}

// MARK: Class's public methods
extension RootVC {
}

// MARK: Class's private methods
private extension RootVC {
    private func localize() {
        // todo: Localize view's here.
    }
    private func visualize() {
        // todo: Visualize view's here.
    }
}
