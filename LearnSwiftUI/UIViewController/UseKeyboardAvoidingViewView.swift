//
//  UseKeyboardAvoidingViewView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/15.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct UseKeyboardAvoidingViewView : View {
    
    @State private var textFieldHello: String = ""
    
    var body: some View {
        KeyboardAvoidingView{
            VStack(spacing: 20.0){
                Spacer()
                Text("UseKeyboardAvoidingViewView")
                TextField($textFieldHello,
                          placeholder: Text("Hello TextField!"),
                          onEditingChanged: { changed in
                            print(" onEditingChanged:\(self.textFieldHello)")
                },
                          onCommit: {
                            print("helloTextFieldonCommit:\(self.textFieldHello)")
                            UIApplication.shared.keyWindow?.endEditing(true)
                })
                    .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            }
            .padding(.all, 20.0)
        }
    }
}

#if DEBUG
struct UseKeyboardAvoidingViewView_Previews : PreviewProvider {
    static var previews: some View {
        UseKeyboardAvoidingViewView()
    }
}
#endif
