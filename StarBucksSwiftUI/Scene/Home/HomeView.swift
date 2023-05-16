//
//  HomeView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/08.
//

import SwiftUI

struct HomeView: View {
    @State private var isScrollUp: Bool = false
    @State private var scrollPosition: CGPoint = .zero
    @State private var scrollOffset: CGFloat = 0.0
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView {
                VStack {
                    VStack {
                        StatusView()
                        StatusBarView()
                    }
                    .id(0)
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
                .background(GeometryReader { geometry in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    scrollPosition = value
                    print(scrollPosition)
                    handleScroll(scrollPosition)
                }
            }
            .coordinateSpace(name: "scroll")
            .overlay {
                Button(action: {
                    print("Delivery Service Button tapped!")
                    withAnimation {
                        scrollViewProxy.scrollTo(0)
                    }
                }, label: {
                    Image("bicycle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                })
                .alignmentGuide(HorizontalAlignment.center) { _ in
                    -110
                }
                .alignmentGuide(VerticalAlignment.center) { _ in
                    -300
                }
            }
        .edgesIgnoringSafeArea(.top)
        }
    }
    
    func handleScroll(_ offset: CGPoint) {
        let delta = offset.y - scrollOffset
        scrollOffset = offset.y
        
        if delta < 0 {
            print("Scroll UP")
        } else {
            print("Scroll Down")
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
