//
//  AppStoreView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/18.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct AppStoreView : View {
    let width = UIApplication.shared.keyWindow?.frame.width
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("AppStoreView")
            }
            .navigationBarTitle(Text("App Store"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct AppStore_Previews : PreviewProvider {
    static var previews: some View {
        AppStoreView()
    }
}
#endif
