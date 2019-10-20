//
//  ListView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/6.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct ListView : View {
    
    private let sizes = [MyData(title:"100.0"),MyData(title: "120.0"),MyData(title: "130.0"),MyData(title: "140.0")]
    private var sizes2 = [MyData(title:"100.0"),MyData(title: "120.0"),MyData(title: "130.0"),MyData(title: "140.0")]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Section One")) {
                    // ForEach 改版到现在被强制加了个 ID 非常不方便
                    ForEach(sizes) { sub in
                        Text("MyData 1 - \(sub.title)")
                    }
                }
                Section(header: Text("Section Two")) {
                    
                    ForEach(sizes2) { sub in
                        Text("MyData 2 - \(sub.title)")
                    }
                }
            }
            .navigationBarTitle(Text("App Store"), displayMode: .inline)
            .navigationBarItems(trailing: HStack{
                Button(action: {
                    //                    addSize2()
                }){
                    Text("Add 2")
                }
                EditButton()
            })
            
        }
    }
    
    func addSize2() {
//        let num = arc4random() % 1024
//        sizes2.append(MyData(title: "\(num)"))
    }
}

struct MyData : Identifiable {
    var id = UUID()
    var title: String
}


#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        ListView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")//"iPhone 11 Pro Max","iPhone SE"
    }
}
#endif
