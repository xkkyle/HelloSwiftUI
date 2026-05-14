//
//  Button.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/14/26.
//

import SwiftUI

struct ButtonViews: View {
    var body: some View {
        HStack(spacing: 20) {
            Button("기본 버튼") {
                print("press 기본 버튼")
            }
            
            Button(action: { print("press 버튼 2") }) {
                Text("버튼 2")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
            
            Button(action: { print("press 버튼 3") }) {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 80, height: 80)
                    .overlay(
                        Text("버튼 3")
                    )
            }.accentColor(.green)
            
           
        }
        
        HStack(spacing: 20) {
            // 버튼에 이미지 사용시 문제 발생할 수 있음 (원본 색상을 잃어버리고, accentColor로 뒤덮이는 현상)
            // - Image.renderingMode()가 자동으로 template으로 설정되었으므로, original로 변경해줘야 함
            Button(action : { print("")}) {
                Image("SwiftUI")
                    .renderingMode(.original)
                    .imageScale(.large)
                    .frame(width: 120, height: 120)
                    .background(RoundedRectangle(cornerRadius: 8).strokeBorder())
            }
            .accentColor(Color.green)
            .buttonStyle(PlainButtonStyle())
            
            
            Button(action : { print("")}) {
                Image(systemName: "play.circle")
                    .imageScale(.large)
                    .font(.title)
            }
            .buttonStyle(PlainButtonStyle()) // OS에서 공통으로 사용할 수 있는 버튼 스타일. 유휴상태(IDLE)에서는 버튼의 컨텐츠에 대해 어떠한 스타일도 반영하지 않음
            // .buttonStyle(DefaultButtonStyle()) // - 시스템이 알아서 버튼 스타일 반영
            // .buttonStyle(BorderlessButtonStyle())
            
            
            Image(systemName: "cart")
                .foregroundColor(.green)
                .imageScale(.large)
                .onTapGesture {
                    print("IMAGE TAP GESTURE")
                }
            
            
            Button(action: { print("Image Tap Gesture") }) {
                Image(systemName: "cart")
                    .imageScale(.large)
                
            }.accentColor(.green)
        }
    }
}

#Preview {
    ButtonViews()
}
