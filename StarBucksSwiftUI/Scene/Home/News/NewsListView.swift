//
//  NewsListView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/11.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        VStack {
            HStack {
                Text("What's New")
                    .font(.title)
                    .bold()
                Spacer()
                Button(action: {
                    print("See all")
                }, label: {
                    Text("See all")
                })
                .tint(.green)
            }
            .padding(.horizontal, 32)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(0..<10) { _ in
                        NewsView()
                    }
                }
                .padding(.horizontal, 32)
                
            }
        }
        .padding(.vertical, 32)
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .frame(height: 500)
    }
}
