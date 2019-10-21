//
//  FormView.swift
//  LearnSwiftUI
//
//  Created by smalltalk on 22/10/19.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        Form {
            Section {
                Text("Section Text")
                Text("Section Text")
                Image("aragaki")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            Section {
                Text("Section Text")
                Text("Section Text")
                Text("Section Text")
                Text("Section Text")
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
