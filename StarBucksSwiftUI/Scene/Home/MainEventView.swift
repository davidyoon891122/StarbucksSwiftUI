//
//  MainEventView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/10.
//

import SwiftUI

struct MainEventView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("summerImage")
                .resizable()
//                .aspectRatio(4.5/5, contentMode: .fit)
                .frame(height: 450)
            VStack {
                Text("스타벅스와 함께하는")
                    .font(.title)
                    .foregroundColor(.white)
                Text("청량한 여름의 시작")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("2023.5.3 - 7.10")
                    .font(.body)
                    .foregroundColor(.white)
            }
            .alignmentGuide(.top, computeValue: {
                $0[.top] - 50
            })
        }
        .padding(.horizontal)
    }
}

struct MainEventView_Previews: PreviewProvider {
    static var previews: some View {
        MainEventView()
    }
}
