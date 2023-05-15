//
//  MenuStore.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/15.
//

import Foundation

enum MenuType {
    case coffee
    case cake
}

class MenuStore: ObservableObject {
    @Published var menuData: [MenuModel] = []
    
    private var menuType: MenuType
    
    init(menuType: MenuType) {
        self.menuType = menuType
        switch self.menuType {
        case .coffee:
            self.fetchCoffeeData()
        case .cake:
            self.fetchCakeData()
        }
    }
    
    func fetchCoffeeData() {
        menuData = MenuModel.coffeMenu
    }
    
    func fetchCakeData() {
        menuData = MenuModel.foodMenu
    }
}
