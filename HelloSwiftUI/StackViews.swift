//
//  StackViews.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/12/26.
//

import SwiftUI

struct StackViews: View {
    var body: some View {
        VStack {
            Text("도형 만들기")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            HStack {
                Text("둥근 모양")
                    .font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle()
                    .fill(.black)
                    .frame(height: 10)
                
                HStack {
                    Circle()
                        .fill(.yellow)
                    Ellipse()
                        .fill(.green)
                    Capsule()
                        .fill(.orange)
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.gray)
                }
            }
            
            HStack {
                Text("각진 모양")
                    .font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle()
                    .fill(.black)
                    .frame(height: 10)
                
                
                HStack{
                    Color.red
                    Rectangle()
                        .fill(.blue)
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.purple)
                }
            }
        }.padding()
    }
}

#Preview {
    StackViews()
}
