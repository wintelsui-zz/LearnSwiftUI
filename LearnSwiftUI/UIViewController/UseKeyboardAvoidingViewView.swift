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
            VStack(alignment: .center) {
                Text("UseKeyboardAvoidingView\nView")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.center)
                
                Text("这个界面主要体现键盘效果")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.center)
                
                TextField(/*@START_MENU_TOKEN@*/"Text Placeholder"/*@END_MENU_TOKEN@*/,
                    text: $textFieldHello,
                    onEditingChanged: { changed in
                        
                }, onCommit: {
                    
                    UIApplication.shared.keyWindow?.endEditing(true)
                    
                    }).textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
            }
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
