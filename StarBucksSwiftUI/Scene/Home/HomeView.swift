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
                RecommendMenuView()
                BannerView(imageName: "gift_banner")
                BannerView(imageName: "gift_banner2")
                MainEventView()
                EventBanner(imageName: "event_banner")
                EventBanner(imageName: "event_banner2")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
