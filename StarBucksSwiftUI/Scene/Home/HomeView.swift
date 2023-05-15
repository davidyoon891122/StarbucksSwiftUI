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
                Group {
                    RecommendMenuView(menuStore: MenuStore(menuType: .coffee), title: "고객님을 위한 추천 메뉴")
                    BannerView(imageName: "gift_banner")
                    BannerView(imageName: "gift_banner2")
                    MainEventView()
                    EventBanner(imageName: "event_banner")
                    EventBanner(imageName: "event_banner2")
                }
                Group {
                    NewsListView()
                    EventBanner(imageName: "campaign_banner")
                    RecommendMenuView(menuStore: MenuStore(menuType: .cake), title: "함께 하면 좋은 푸드 메뉴")
                    EventBanner(imageName: "event_banner3")
                        .padding(.vertical)
                    EventBanner(imageName: "event_banner4")
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
