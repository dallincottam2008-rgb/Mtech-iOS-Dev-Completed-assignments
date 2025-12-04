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
        case detail
        case powers
        case settings
    }
    
    @ViewBuilder
    func view(for route: Route) -> some View {
        switch route {
        case .list:
            DragonsListView()
        case .detail:
            DragonDetailView()
        case .powers:
            PowersListView()
        case .settings:
            SettingsView()
        }
    }
    
    func navigateTo(route: Route) {
        navigationPath.append(route)
    }
}
