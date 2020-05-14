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
            TabView(selection: $currectTab) {
                HomeListView().tabItem {VStack {
                    Image(systemName: "house.fill")
                    Text("UIs")
                    }
                }.tag(1)
                MineView().tabItem {VStack {
                    Image(systemName: "person.fill")
                    Text("Mine")
                    }
                }.tag(2)
            }
            .navigationBarTitle(Text("\(currectTab == 1 ? "UIs" : "Mine")"), displayMode: .inline)
        }.onDisappear {
            self.startTimer()
        }
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
           
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
