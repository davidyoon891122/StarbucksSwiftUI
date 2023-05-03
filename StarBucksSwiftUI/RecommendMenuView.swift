//
//  RecommendMenuView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/03.
//

import SwiftUI

struct RecommendMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("고객님을 위한 추천 메뉴")
                .font(.title3)
                .fontWeight(.heavy)
                .bold()
                .padding(16)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(1..<11) { _ in
                        Image("Latte")
                            .resizable()
                            .frame(width: 110, height: 110)
                            .clipShape(Circle())
                            .overlay(Circle().stroke())
                            
                    }
                }
                .padding(16)
            }
            Spacer()
        }
        .frame(height: 200)
    }
}

struct RecommendMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendMenuView()
    }
}
