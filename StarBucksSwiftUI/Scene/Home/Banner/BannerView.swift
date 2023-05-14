//
//  BannerView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/10.
//

import SwiftUI

struct BannerView: View {
    @State var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(height: 80)
            .padding(.horizontal)
            .shadow(radius: 5)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(imageName: "gift_banner")
    }
}
