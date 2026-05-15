//
//  NavigationView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/14/26.
//

import SwiftUI

struct NavigationViews: View {

    
    var body: some View {
        let leadingItem = Button(action : { print("leading item tapped") }) {
            Image(systemName: "bell").imageScale(.large)
        }
        
        let middleItem = Button(action : { print("middle Item Tapped") }) {
            Image(systemName: "cart").imageScale(.large)
        }
        
        let trailingItem = Button(action : { print("trailing item tapped") }) {
            Image(systemName: "gear").imageScale(.large)
        }
        
        let navigationBarItems = HStack {
            leadingItem
            middleItem
            trailingItem
        }
        
        let destination = VStack {
            Text("Destination View")
            Spacer()
            Text("Destination View")
            Spacer()
            Text("Destination View")
        }.navigationBarBackButtonHidden(true)
        
        return NavigationView {
            NavigationLink(destination: destination) {
                Image(systemName: "cart").renderingMode(.original)
            }
            .buttonStyle(DefaultButtonStyle())
            .navigationBarItems(trailing: navigationBarItems)
            .navigationBarTitle("네비게이션 타이틀", displayMode:.automatic)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    NavigationViews()
}
