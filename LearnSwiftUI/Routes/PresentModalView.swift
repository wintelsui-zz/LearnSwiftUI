//
//  PresentModalView.swift
//  LearnSwiftUI
//
//  Created by smalltalk on 21/10/19.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct PresentModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("This is a Present Modal View")
            }
            .navigationBarTitle(Text("Present Modal View"), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss")
            })
        }
    }
}

struct PresentModalView_Previews: PreviewProvider {
    static var previews: some View {
        PresentModalView()
    }
}
