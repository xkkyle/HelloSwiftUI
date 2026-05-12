//
//  OverlayAndBackground.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/12/26.
//

import SwiftUI

struct OverlayAndBackground: View {
    var body: some View {
        VStack {
            
            // Background / Overlay 사용법
            // - UI의 각 부분을 구성하는 개별적인 뷰 객체들을 꾸밀 때 사용
            Circle()
                .fill(.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
                .overlay(
                    Text("JoyStick")
                        .font(.title)
                )
                .overlay(
                    Image(systemName: "arrow.up").font(.title).padding(),
                    alignment: .top
                )
                .overlay(
                    Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(),
                    alignment: .topTrailing
                )
                .overlay(
                    Image(systemName: "arrow.left").font(.title).padding(),
                    alignment: .leading
                )
                .background(
                    Image(systemName: "arrow.down").font(.title).padding(),
                    alignment: .bottom
                )
                .background(
                    Image(systemName: "arrow.right").font(.title).padding(),
                    alignment: .trailing
                )
            
            // ZStack
            // - 상대적으로 직접적인 연관성이 없는 뷰들을 계층 구조로 나열하여 UI를 구현할 때
            // 자식 뷰의 크기에 따라 ZStack의 크기도 함께 변할 수 있기 때문에, overlay/background 수식어를 사용했을 때와 달리 특정 콘텐츠의 변경 사항이 다른 뷰에까지 함께 영향을 줄 수 있음
            
            ZStack {
                VStack {
                    Spacer()
                    Image(systemName: "arrow.down").font(.title).padding()
                }
                HStack {
                    Spacer()
                    Image(systemName: "arrow.right").font(.title).padding()
                }
                Circle()
                    .fill(.yellow.opacity(0.8))
                    .frame(width: 250, height: 250)
                
                Text("JoyStick").font(.title)
                
                ZStack(alignment: .topTrailing) {
                    Color.clear
                    Image(systemName: "arrow.up.right.circle.fill").font(.title)
                }
                
                VStack {
                    Image(systemName: "arrow.up").font(.title).padding()
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "arrow.left").font(.title).padding()
                    Spacer()
                }
                
            }.frame(width: 250, height: 250)
            
            HStack(spacing:20) {
                
                // Overlay
                Rectangle()
                    .fill(.green)
                    .frame(width: 150, height: 150)
                // UIKit에서 addSubView를 통해 기존 뷰 위에 새로운 뷰를 중첩하여 쌓는 기능처럼 사용 가능
                // 부모 뷰를 기준으로 프레임의 좌표가 결정되고, 크기도 영향을 받음
                // 우선 제일 중앙에 배치됨
                // - 우측에 여백을 주고 싶은 경우 HStack과  Spacer 사용
                // -> ZStack으로 구현한 코드를 overlay로도 가능함
                    .overlay(
                        Rectangle()
                            .fill(.orange)
                            .frame(width: 100, height: 100)
                            .offset(x: 25, y: 25)
                        
                    )
                
                Spacer()

                
                // Background
                // .background가 사실 텍스트의 배경색을 넣는게 아닌, 뷰의 하위 계층에 지정한 색을 가진 또 다른 뷰를 추가하는 기능
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100 ,height: 100)
                    .background(
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 150, height: 150)
                    )
            }.padding()
        }
    }
}

#Preview {
    OverlayAndBackground()
}
