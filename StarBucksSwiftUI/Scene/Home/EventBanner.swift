//
//  EventBanner.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/11.
//

import SwiftUI

struct EventBanner: View {
    @State var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(height: 200)
            .padding(.horizontal)
            .shadow(radius: 10)
    }
}

struct EventBanner_Previews: PreviewProvider {
    static var previews: some View {
        EventBanner(imageName: "event_banner")
    }
}
