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
            PhotoView(userInfo: userInfo)
            Text(userInfo.fullname)
                .font(Font.system(size: 18))
                .fontWeight(.heavy)
                .shadow(color: Color.gray, radius: 5, x: 2, y: 2)
            List{
                Section {
                    NavigationButton(destination: LocationView()
                        .onDisappear(perform: {print("LocationView onDisappear")})
                        .onAppear(perform: {print("LocationView onAppear")})) {
                        HStack{
                        Image(systemName: "location.fill").renderingMode(.template)
                        Text("Location")
                        }
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
                .listStyle(.plain)
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

struct PhotoView : View {
    let userInfo: UserInfoInfo
    
    var body: some View {
        
        return Image(userInfo.image)
            .resizable()
            .frame(width: Length(180.0), height: Length(180.0))
            .aspectRatio(contentMode: .fit)
            .clipped()
            .clipShape(Path(starPath()))
            .overlay(Path(starPath()).stroke(Color.white, lineWidth: 4))
            .shadow(color: Color.gray, radius: 5, x: 2, y: 2)
    }
    
    func starPath() -> CGMutablePath {
        let starPath = CGMutablePath()
        starPath.move(to: CGPoint(x: 90, y: 0))
        starPath.addLine(to: CGPoint(x: 121.74, y: 46.31))
        starPath.addLine(to: CGPoint(x: 175.6, y: 62.19))
        starPath.addLine(to: CGPoint(x: 141.36, y: 106.69))
        starPath.addLine(to: CGPoint(x: 142.9, y: 162.81))
        starPath.addLine(to: CGPoint(x: 90, y: 144))
        starPath.addLine(to: CGPoint(x: 37.1, y: 162.81))
        starPath.addLine(to: CGPoint(x: 38.64, y: 106.69))
        starPath.addLine(to: CGPoint(x: 4.4, y: 62.19))
        starPath.addLine(to: CGPoint(x: 58.26, y: 46.31))
        starPath.closeSubpath()
        return starPath
    }
}
