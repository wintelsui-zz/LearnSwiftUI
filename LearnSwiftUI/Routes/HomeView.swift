//
//  HomeView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/12.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    
    @State private var currectTab = 1
    
    var body: some View {
        NavigationView {
            TabbedView(selection: $currectTab) {
                HomeListView()
                    .tabItemLabel(Text("UIs"))//Image(systemName: "house.fill")
                    .tag(1)
                MineView()
                    .tabItemLabel(Text("Mine"))
                    .tag(2)
                AppStoreView()
                    .tabItemLabel(Text("Apps"))
                    .tag(2)
                
            }
                .navigationBarTitle(Text("\(currectTab == 1 ? "UIs" : "Mine")"), displayMode: .inline)
        }
        
//        unable:
//        unable Image
//        unable Image + Text
//            不能这么写? Why?
//            HomeListView()
//                .tabItemLabel(VStack{
//                    Image(systemName: "person.fill")
//                    Text("Mine")
//                })
//                .tag(2)
//            也不能这么写?? Why?
//            HomeListView()
//                .tabItemLabel{
//                    Image(systemName: "house.fill")
//                    Text("Demo")
//            }
//            `_ModifiedContent<Image, _FrameLayout>` is not a valid tab item type for TabbedView. Only tab items of type `Text`, `Image`, or both are supported.
        
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
