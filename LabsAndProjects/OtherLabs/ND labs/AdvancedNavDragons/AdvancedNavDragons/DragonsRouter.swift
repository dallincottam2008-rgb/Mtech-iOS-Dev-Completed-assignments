//
//  DragonsRouter.swift
//  AdvancedNavDragons
//
//  Created by Dallin J Cottam on 12/4/25.
//
import SwiftUI

@Observable
class DragonsRouter {
    var navigationPath = NavigationPath()
    
    enum Route: Hashable {
        case list
        case detail (dragon: Dragon)
        case powers (dragon: Dragon)
        case settings
    }
    
    @ViewBuilder
    func view(for route: Route) -> some View {
        switch route {
        case .list:
            DragonsListView()
        case .detail(let dragon):
            DragonDetailView(dragon: dragon)
        case .powers(let dragon):
            PowersListView(dragon: dragon)
        case .settings:
            SettingsView()
        }
    }
    
    func navigateTo(route: Route) {
        navigationPath.append(route)
    }
}
