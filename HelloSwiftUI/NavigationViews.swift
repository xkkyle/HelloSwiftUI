//
//  NavigationView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/14/26.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        NavigationView {
            Image(systemName: "cart.fill").navigationBarTitle("네비게이션 바 타이틀", displayMode: .inline)
        }
    }
}

#Preview {
    NavigationViews()
}
