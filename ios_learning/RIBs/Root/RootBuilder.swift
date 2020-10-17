//
//  RootBuilder.swift
//  ios_learning
//
//  Created by Thanh Long on 8/18/20.
//  Copyright © 2020 Thanh Long. All rights reserved.
//

import RIBs

protocol RootDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class RootComponent: Component<RootDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build(withListener listener: RootListener) -> RootRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: RootListener) -> RootRouting {
        let component = RootComponent(dependency: dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        interactor.listener = listener
        return RootRouter(interactor: interactor, viewController: viewController)
    }
}
