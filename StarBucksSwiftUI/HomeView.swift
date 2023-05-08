//
//  HomeView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            StatusView()
            RecommendMenuView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
