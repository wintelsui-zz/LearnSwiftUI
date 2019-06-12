//
//  MineView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/12.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct MineView : View {
    
    let userInfo = UserInfoData.userInfo
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
                .frame(height: 5.0)
            Image(userInfo.image)
                .resizable()
                .frame(width: Length(180.0), height: Length(180.0))
                .aspectRatio(contentMode: .fit)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 5))
                .shadow(color: Color.gray, radius: 5, x: 2, y: 2)
            Text(userInfo.fullname)
                .font(Font.system(size: 18))
                .fontWeight(.heavy)
                .shadow(color: Color.gray, radius: 5, x: 2, y: 2)
            List{
                Section {
                    HStack{
                        Image(systemName: "location.fill").renderingMode(.template)
                        Text("Location")
                    }
                    HStack{
                        Image(systemName: "photo.on.rectangle.fill").renderingMode(.template)
                        Text("Photos")
                    }
                    HStack{
                        Image(systemName: "folder.fill").renderingMode(.template)
                        Text("Collection")
                    }
                    
                }
                
                Section {
                    HStack{
                        Image(systemName: "wrench.fill").renderingMode(.template)
                        Text("Setting")
                    }
                }
            }
        }
    }
}

#if DEBUG
struct MineView_Previews : PreviewProvider {
    static var previews: some View {
        MineView()
    }
}
#endif
