//
//  ContentView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Pay")
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Pay")
                }
            Text("Order")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Order")
                }
            Text("Show")
                .tabItem {
                    Image(systemName: "handbag")
                    Text("Shop")
                }
            Text("Other")
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("Other")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
