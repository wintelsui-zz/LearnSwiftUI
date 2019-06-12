//
//  HomeListView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/5.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct HomeListView : View {
    
    var body: some View {
        
        List {
            NavigationButton(destination: SimpleView()) {
                Text("Simple View")
            }
            NavigationButton(destination: ListView()) {
                Text("List View")
            }
            
            }
            .navigationBarTitle(Text("UIs"), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"].identified(by: \.self)) { deviceName in
            HomeListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif


