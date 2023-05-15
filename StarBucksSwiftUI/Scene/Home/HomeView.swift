//
//  HomeView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    StatusView()
                    StatusBarView()
                }
                RecommendMenuView(menuStore: MenuStore(menuType: .coffee), title: "고객님을 위한 추천 메뉴")
                BannerView(imageName: "gift_banner")
                BannerView(imageName: "gift_banner2")
                MainEventView()
                EventBanner(imageName: "event_banner")
                EventBanner(imageName: "event_banner2")
                NewsListView()
                EventBanner(imageName: "campaign_banner")
                RecommendMenuView(menuStore: MenuStore(menuType: .cake), title: "함께 하면 좋은 푸드 메뉴")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
