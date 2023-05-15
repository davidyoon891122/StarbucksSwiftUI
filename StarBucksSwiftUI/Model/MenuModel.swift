//
//  MenuModel.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/15.
//

import Foundation

struct MenuModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

extension MenuModel {
    static var coffeMenu: [MenuModel] = [
        MenuModel(name: "아이스 카페 라떼", imageName: "Latte"),
        MenuModel(name: "돌체 콜드 브루", imageName: "Latte"),
        MenuModel(name: "카페 라떼", imageName: "Latte"),
        MenuModel(name: "바닐라 스타벅스 더블 샷", imageName: "Latte"),
        MenuModel(name: "에스프레소 프라푸치노", imageName: "Latte"),
        MenuModel(name: "헤이즐넛 스타벅스 더블 샷", imageName: "Latte"),
        MenuModel(name: "아이스 카페 아메리카노", imageName: "Latte"),
        MenuModel(name: "아이스 스타벅스 돌체 라떼", imageName: "Latte")
    ]
    
    static var foodMenu: [MenuModel] = [
        MenuModel(name: "부드러운 생크림 카스텔라", imageName: "castella"),
        MenuModel(name: "부드러운 생크림 카스텔라", imageName: "castella"),
        MenuModel(name: "The 촉촉 초콜릿 생크림 케이크", imageName: "castella"),
        MenuModel(name: "마스카포네 티라미수 케이크", imageName: "castella"),
        MenuModel(name: "부드러운 티라미수 롤", imageName: "castella"),
        MenuModel(name: "7 레이어 가나슈 케이크", imageName: "castella"),
        MenuModel(name: "바스크 치즈 케이크", imageName: "castella"),
        MenuModel(name: "슈크림 가득 바움쿠헨", imageName: "castella"),
        MenuModel(name: "포테이토 어니언 크림치즈 베이글", imageName: "castella")
    ]
}
