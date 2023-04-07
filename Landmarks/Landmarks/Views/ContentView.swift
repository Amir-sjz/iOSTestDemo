//
//  ContentView.swift
//  Landmarks
//
//  Created by chengz on 2023/4/7.
//

import SwiftUI

// 描述视图的内容和布局
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// 生命该视图的预览
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
