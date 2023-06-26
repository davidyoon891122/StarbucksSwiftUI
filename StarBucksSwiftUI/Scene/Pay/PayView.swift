//
//  PayView.swift
//  StarBucksSwiftUI
//
//  Created by jiwon Yoon on 2023/05/18.
//

import SwiftUI

struct PayView: View {
    @State private var currentIndex = 0
    var body: some View {
        NavigationStack {
            VStack {
                GeometryReader { proxy in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1..<10) { _ in
                                PayCardView()
                            }
                        }
                    }
                    .navigationTitle("Pay")
                }
                .onAppear {
                    UIScrollView.appearance().isPagingEnabled = true
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct PayCardView: View {
    var body: some View {
        VStack {
            Image("paycard")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 320)
                .cornerRadius(10)
                .padding()
            HStack {
                Text("카드이름")
                    .font(.body)
                    .bold()
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 11, height: 11)
                    .foregroundColor(.yellow)
                    .padding(.all, 5)
                    .overlay {
                        Circle()
                            .stroke(Color.gray, lineWidth: 0.2)
                            .foregroundColor(.clear)
                    }
            }
            HStack {
                Image(systemName: "wonsign.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                Text("11,000원")
                    .font(.title2)
                    .bold()
            }
            VStack(spacing: 0){
                Image("barcodeImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.horizontal)
                HStack(spacing: 0) {
                    Text("****_")
                    Text("****_")
                    Text("**28_")
                    Text("1423")
                }
                HStack {
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.green)
                    Text("바코드 유효시간이 만료되었습니다.")
                        .font(.subheadline)
                        .foregroundColor(.green)
                    
                }
                .padding(.vertical)
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "wonsign.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                        Text("자동 충전")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "wonsign.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                        Text("일반 충전")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .border(.bar)
    }
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
    }
}
