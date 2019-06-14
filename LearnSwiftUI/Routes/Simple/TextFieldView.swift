//
//  TextFieldView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/14.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct TextFieldView : View {
    
    //本来想把SecureField和TextField都写在SimpleView中,但是写在里面就是报错,莫名其妙
    
    
    @State private var textFieldHello: String = ""
    @State private var secureFieldHello: String = ""
    
    var body: some View {
        VStack(spacing: 20.0) {
            Spacer()
                .frame(height: 20.0)
            
            HStack {
                Text("TextField：").color(.gray).multilineTextAlignment(.trailing).frame(width: 100.0)
                
                TextField($textFieldHello,
                          placeholder: Text("Hello TextField!"),
                          onEditingChanged: { changed in
                            print(" onEditingChanged:\(self.textFieldHello)")
                },
                          onCommit: helloTextFieldonCommit)
                    .textFieldStyle(.roundedBorder)
            }
            
            HStack {
                Text("Password：").color(.gray).multilineTextAlignment(.trailing).frame(width: 100.0)
                
                SecureField($secureFieldHello, placeholder: Text("Hello SecureField!")) {
                    
                    print("SecureField: \(self.secureFieldHello)")
                    
                    UIApplication.shared.keyWindow?.endEditing(true)
                    }
                    .textFieldStyle(.roundedBorder)
            }
            Spacer()
            }
            .padding(.horizontal, 20.0)
            .navigationBarTitle(Text("Text/Secure Field"))
    }
    
    
    func helloTextFieldonCommit() {
        print("helloTextFieldonCommit:\(self.textFieldHello)")
        UIApplication.shared.keyWindow?.endEditing(true)
    }
}

#if DEBUG
struct TextFieldView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
#endif

