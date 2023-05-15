//
//  RecommendMenuView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/03.
//

import SwiftUI

struct RecommendMenuView: View {
    @ObservedObject var menuStore: MenuStore
    @State var title: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3)
                .fontWeight(.heavy)
                .bold()
                .padding(16)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(menuStore.menuData) { menu in
                        VStack {
                            Image(menu.imageName)
                                .resizable()
                                .frame(width: 110, height: 110)
                                .clipShape(Circle())
                                .overlay(Circle().stroke())
                            Text(menu.name)
                                .font(.footnote)
                                .bold()
                        }
                    }
                    .padding(.horizontal, 8)
                }
                .padding(16)
            }
            .scrollIndicators(.hidden)
            Spacer()
        }
        .frame(height: 220)
    }
}

struct RecommendMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendMenuView(menuStore: MenuStore(menuType: .coffee), title: "고객님을 위한 추천 메뉴")
    }
}
