//
//  SegmentedControlView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/15.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct SegmentedControlView : View {
    @State private var currentSegmentedControlIndex = 0
    private let pickerHelloList = ["P1", "P2", "P3"]
    
    var body: some View {
        Text("SegmentedControl 消失了")
    }
}

struct ShowView : View {
    let index: Int
    
    var body: some View {
        return VStack{
            if index == 0 {
                Image("aragaki")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            else if index == 1 {
                Image("aragaki2")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Ellipse())
            }
            
            else {
                Image("aragaki3")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

#if DEBUG
struct SegmentedControlView_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlView()
    }
}
#endif

