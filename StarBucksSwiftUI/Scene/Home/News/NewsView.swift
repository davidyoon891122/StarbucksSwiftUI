//
//  NewsView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/15.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack {
            Image("ssgimage")
                .resizable()
                .frame(width: 250, height: 170)
                .cornerRadius(4)
            Text("5월 12일, SSG랜더스필드1F점 특화 MD 출시")
                .font(.title3)
                .bold()
                .lineLimit(1)
                .padding(.vertical, 1)
            Text("SSG렌더스필드1F점에서만 만나볼 수 있는 상품을 소개합니다.")
                .font(.callout)
        }
        .frame(width: 250)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            .frame(width: 250, height: 270)
    }
}
