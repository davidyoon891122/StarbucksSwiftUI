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
                    .padding(.top, 60 + 56)
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
    }
}

struct StatusBarView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("4 ✭ util next Reward")
                        .foregroundColor(Color.yellow)
                    ProgressView(value: 0.5)
                        .tint(.yellow)
                        .scaleEffect(x: 1.0, y: 2.0)
                        .frame(width: 230, height: 10)
                }
                HStack {
                    Text("8")
                        .font(.largeTitle)
                        .bold()
                    Text("/")
                    Text("12✭")
                        .font(.title2)
                        .foregroundColor(Color.yellow)
                        .bold()
                }
                .padding(.leading, 32)
            }
            HStack {
                Button(action: {
                    print("What's New")
                }, label: {
                    Image(systemName: "envelope")
                    Text("What's New")
                        .bold()
                })
                .tint(.black)
                Button(action: {
                    print("Coupon")
                }, label: {
                    Image(systemName: "gift")
                        .overlay {
                            Circle()
                                .frame(width: 7)
                                .offset(x:4, y: -6)
                                .foregroundColor(.green)
                        }
                    Text("Coupon")
                        .bold()
                })
                .tint(.black)
                .padding(.leading)
                Spacer()
                Button(action: {
                    print("Alarm")
                }, label: {
                    Image(systemName: "bell")
                        .tint(.black)
                })
                .overlay {
                    Circle()
                        .frame(width: 7)
                        .offset(x:4, y: -6)
                        .foregroundColor(.green)
                }
            }
            .padding(.vertical, 4)
        }
        .padding(.horizontal)
    }
}


struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            StatusView()
            StatusBarView()
        }
        .frame(height: 400)
    }
}
