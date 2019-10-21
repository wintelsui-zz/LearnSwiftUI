//
//  PickerView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/15.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct PickerView : View {
    
    @State private var pickerIndex = 0
    private let pickerList = (0..<20).map { "\(2000 + $0)" }
    
    @State private var currentSegmentedControlIndex = 0
    private let pickerHelloList = ["P1", "P2", "P3"]
    
    var body: some View {
        VStack {
            Picker(selection: $pickerIndex, label: Text("Picker")) {
                
                ForEach(0..<pickerList.count) {
                    Text(self.pickerList[$0]).tag($0)
                }
            }
            
            Picker("SegmentedControl", selection: $currentSegmentedControlIndex) {
                ForEach(0 ..< pickerHelloList.count) { index in
                    Text(self.pickerHelloList[index])
                        .tag(index)
                }
                
            }.pickerStyle(SegmentedPickerStyle())
            
            Spacer()
        }
            .navigationBarTitle(Text("Picker"))
    }
}

#if DEBUG
struct PickerView_Previews : PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
