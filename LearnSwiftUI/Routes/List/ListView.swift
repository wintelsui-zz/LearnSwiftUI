//
//  ListView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/6.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct ListView : View {
    private let sizes = ["100.0", "140.0", "180.0", "220.0", "260.0", "300.0"]
    private var sizes2 = ["100.0", "140.0", "180.0", "220.0", "260.0", "300.0"]
    
    var body: some View {
        List {
            Section(header: Text("head 1")) {
                ForEach(sizes.identified(by: \.self)) { s1 in
                    Text("Date 1 \(s1)")
                }
            }
            Section(header: Text("head 2")) {
                ForEach(sizes2.identified(by: \.self)) { s1 in
                    Text("Date 2 \(s1)")
                    }.onMove(perform: { (offset, toIndex) in
                        //Here: i dont know how to use offset
                    })
                    .onDelete { (offset) in
                        //Here: i dont know how to use offset
                }
                
            }
        }
            .navigationBarItems(trailing: HStack{
                Button(action: addSize2){
                    Text("Add 2")
                }
                EditButton()
            })
        .listStyle(.grouped)
    }
    
    func addSize2() {
//        let num = arc4random() % 1024
//        sizes2.append("\(num)")
//
//        Here:Cannot use mutating member on immutable value: 'self' is immutable
    }
}

#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
