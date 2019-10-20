//
//  SimpleView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/10.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct SimpleView : View {
    
    //状态属性参数
    @State private var alertHello = false
    @State private var toggleHello = false
    @State private var sliderHelloValue: Double = 0.0
    @State private var stepperHello : Int = 1
    @State private var textFieldHello: String = ""
    @State private var secureFieldHello: String = ""
    @State private var datePickerHello = Date()
    @State private var pickerHelloIndex: Int = 1
    
    private let pickerHelloList = ["P1", "P2", "P3"]
    
    var body: some View {
        
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            VStack(spacing: 10.0) {
                HStack {
                    Image(systemName: "person.fill")
                    Image("aragaki")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 64.0,height: 64.0)
                        .clipped()
                        .clipShape(Circle())
                    
                    Text("Hello Text!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.init(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 10.0))
                        .multilineTextAlignment(.center)
                        .background(Color.yellow)
                }
                //按钮
                Button(action: helloButtonPressed) {
                    Text("Hello Button!").alert(isPresented: $alertHello) { () -> Alert in
                        Alert(title: Text("Hello Alert:Toggle will \(toggleHello == true ? "turn on" : "turn off")"))
                    }
                }
                Toggle(isOn: $toggleHello) {
                    Text("Hello Toggle!")
                }
                
                HStack {
                    Text("TextField：").foregroundColor(.gray)
                    
                    TextField("Text Placeholder",
                        text: $textFieldHello,
                        onEditingChanged: { changed in
                            print(" onEditingChanged:\(self.textFieldHello)")
                    }, onCommit: helloTextFieldonCommit).textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                }
                HStack {
                    //这里我暂时无法理解,为什么用String(format: "%.2f", self.sliderHelloValue)会报错
                    Text("Hello Slider:\(getSliderHelloString())")
                    Slider(value: $sliderHelloValue)
                }
                DatePicker(selection: $datePickerHello,
                           displayedComponents: [.date]){
                    Text("Date Picker")
                }
                Text("Hello DatePicker:\(getDatePickerDateString())")
            }
            
        }.navigationBarTitle(Text("Simple UIs"), displayMode: .inline)
    }
    
    func helloTextFieldonCommit() {
        print("helloTextFieldonCommit:\(self.textFieldHello)")
        UIApplication.shared.keyWindow?.endEditing(true)
    }
    func helloButtonPressed() {
        alertHello = true
        if self.toggleHello {
            //Toggle无动画
            self.toggleHello = !self.toggleHello
        }else{
            //Toggle有动画
            withAnimation{
                self.toggleHello.toggle()
            }
        }
    }
    
    func getSliderHelloString() -> String {
        let number = self.sliderHelloValue
        return String(format: "%.2f", number)
    }
    
    func getDatePickerDateString() -> String {
        let dateformatter = DateFormatter()
        dateformatter.timeZone = TimeZone.current
        dateformatter.dateFormat = "YYYY/MM/dd"
        let dateString = dateformatter.string(from: datePickerHello)
        return dateString
    }
}

#if DEBUG
struct SimpleView_Previews : PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
#endif

