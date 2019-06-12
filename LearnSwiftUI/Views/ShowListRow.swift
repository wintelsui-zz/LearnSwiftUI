//
//  ShowListRow.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/6.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct ShowListRow : View {
    
    var info: ShowListInfo
    
    var body: some View {
        Text(info.title)
    }
}

#if DEBUG
struct ShowListRow_Previews : PreviewProvider {

    static var previews: some View {
        ShowListRow(info: ShowListInfo(title: "T##String", className: "T##String"))
    }
}
#endif
