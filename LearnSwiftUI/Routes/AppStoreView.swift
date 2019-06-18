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
        ScrollView {
            Spacer().frame(height: 10.0)
            VStack {
                ForEach(0..<5){_ in ScrollView(showsHorizontalIndicator:false, showsVerticalIndicator: false) {
                        HStack {
                            ForEach(0..<10){_ in
                                Image("aragaki")
                                    .resizable()
                                    .frame(width: 60.0, height: 60.0)
                                    .aspectRatio(contentMode: .fit)
                                    .clipped()
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Spacer().frame(width: 10.0)
                            }
                        }
                        }.frame(width:self.width, height:70.0)
                    ScrollView(showsHorizontalIndicator:false, showsVerticalIndicator: false) {
                        HStack {
                            ForEach(0..<10){_ in
                                Image("aragaki")
                                    .resizable()
                                    .frame(width: 80.0, height: 80.0)
                                    .aspectRatio(contentMode: .fit)
                                    .clipped()
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Spacer().frame(width: 10.0)
                            }
                        }
                        }.frame(width:self.width, height:90.0)
                }
            }
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
