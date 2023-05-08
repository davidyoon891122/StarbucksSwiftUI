//
//  StatusView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/08.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.white]), startPoint: .top, endPoint: .bottom)
            VStack(alignment: .leading) {
                Text("감사의 마음을 전하는 5월,\n스타벅스 MD와 함께해보세요")
                    .bold()
                    .font(.title2)
                    .padding(.leading, 32)
                    .padding(.top, 60)
                HStack {
                    Spacer()
                    Button(action: {
                        print("Move to detailView")
                    }, label: {
                        HStack {
                            Text("내용 보기")
                                .font(.body)
                                .bold()
                                .foregroundColor(.black)
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.gray)
                        }
                    })
                    .padding(.trailing, 16)
                    .padding(.bottom, 16)
                }
            }
        }
        .frame(height: 200)
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
