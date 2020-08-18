//  File name   : RootRouter.swift
//
//  Author      : Thanh Long
//  Created date: 8/17/20
//  Version     : 1.00
//  --------------------------------------------------------------
//  Copyright © 2020 Thanh Long. All rights reserved.
//  --------------------------------------------------------------

import RIBs

protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    // todo: Declare methods the router invokes to manipulate the view hierarchy.
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable> {
    /// Class's constructor.
    override init(interactor: RootInteractable, viewController: RootViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    // MARK: Class's public methods
    override func didLoad() {
        super.didLoad()
    }
    
    /// Class's private properties.
}

// MARK: RootRouting's members
extension RootRouter: RootRouting {
    
}

// MARK: Class's private methods
private extension RootRouter {
}
