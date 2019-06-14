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
    
    var body: some View {
        VStack {
            Picker(selection: $pickerIndex, label: Text("Picker")) {
                
                ForEach(0..<pickerList.count) {
                    Text(self.pickerList[$0]).tag($0)
                }
            }
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
