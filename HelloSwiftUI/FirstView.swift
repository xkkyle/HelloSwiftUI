//
//  FirstView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/12/26.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Kyle's First Native app")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(.blue)
                .padding()
            
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.black)
            
            Text("글자색은 Foreground, 배경색은 Background")
                .foregroundColor(.white)
                .padding(10) // 텍스트 주변 여백 설정
                .background(.blue)
            
            Text("Hello world")
                .foregroundColor(.black)
                .padding(20)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Helvetica Neue", size: 16))
                .fontWeight(.semibold)
                .italic()
                .underline()
                .strikethrough()
                
            
//            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안보입니다.")
//                .lineLimit(3)
//                .multilineTextAlignment(.leading) // 다중행 문자열 정렬 방식
//                .fixedSize() // 주어진 공간의 크기가 작아도 텍스트를 생략하지 않고 표현되도록 설정
//
//
//            Text("자간과 기준선")
//                .kerning(4) // 자간
//                .font(.system(size: 16))
//            + Text(" 조정도 쉽게 가능합니다.").baselineOffset(8)// 기준선
//                .font(.system(size: 16))
//
//            Text("⭐️✅⭐️✅").font(.largeTitle)
//                .padding()
//                .background(.yellow)
//
//            Text("⭐️✅⭐️✅").font(.largeTitle)
//                .background(.yellow)
//                .padding()
        }
        
        HStack(alignment: .center) {
            Image("SwiftUI")
            Image("SwiftUI")
                .resizable()
                .frame(width: 50, height: 50)
            
            // resizingMode 생략 시 stretch 자동 적용
            Image("SwiftUI")
                .resizable(capInsets: .init(top: 0, leading: 50, bottom:0, trailing: 0))
                .frame(width: 200, height: 200)
            
            // UIKit UIImage에서 resizableImage 메서드 사용 시 이미지 특정 영역만을 지정해 늘릴 때, 기본값으로 적용되었던 tile이 stretch로 변경되었기에, resizingMode: .tile을 적용해야 tile 모드를 쓸 수 있음
        }
        
//        VStack(spacing: 20) {
//            Image(systemName: "book.fill")
//                .resizable()
//                .frame(width: 100, height: 150)
//
//            Image(systemName: "book.fill")
//                .scaledToFit()
//                .frame(width: 100, height: 150)
//
//            Image(systemName: "book.fill")
//                .scaledToFill()
//                .frame(width: 100, height: 150)
//                .clipped()
//
//            Image(systemName: "speaker.3").fontWeight(.bold)
//        }
        
        VStack(spacing: 20) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 100, height: 50)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 150)
        }
        
        ZStack() {
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
                .offset(x: 40, y:40)
            Rectangle()
                .fill(.yellow)
                .frame(width: 150, height: 150)
                .offset(x: 40, y:40)
        }
    }
}

#Preview {
    FirstView()
}
