//  File name   : RootBuilder.swift
//
//  Author      : Thanh Long
//  Created date: 8/17/20
//  Version     : 1.00
//  --------------------------------------------------------------
//  Copyright © 2020 Thanh Long. All rights reserved.
//  --------------------------------------------------------------

import RIBs
import FwiCore

// MARK: Dependency tree
protocol RootDependency: Dependency {
    // todo: Declare the set of dependencies required by this RIB, but cannot be created by this RIB.
}

final class RootComponent: Component<RootDependency> {
    /// Class's public properties.
    let RootVC: RootVC
    
    /// Class's constructor.
    init(dependency: RootDependency, RootVC: RootVC) {
        self.RootVC = RootVC
        super.init(dependency: dependency)
    }
    
    /// Class's private properties.
    // todo: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: Builder
protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {
    /// Class's constructor.
    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }
    
    // MARK: RootBuildable's members
    func build() -> LaunchRouting {
        let vc = RootVC(nibName: RootVC.identifier, bundle: nil)
        let component = RootComponent(dependency: dependency, RootVC: vc)

        let interactor = RootInteractor(presenter: component.RootVC)

        // todo: Create builder modules builders and inject into router here.
        
        return RootRouter(interactor: interactor, viewController: component.RootVC)
    }
}
