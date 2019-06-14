//
//  HomeListView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/5.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct HomeListView : View {
    
    var body: some View {
        
        List {
            NavigationButton(destination: SimpleView()) {
                HStack{
                    Image(systemName: "rectangle.3.offgrid.fill")
                    Text("Simple View")
                }
            }
            NavigationButton(destination: TextFieldView()) {
                HStack{
                    Image(systemName: "textformat.abc.dottedunderline")
                    Text("TextField View")
                }
            }
            NavigationButton(destination: SegmentedControlView()) {
                HStack{
                    Image(systemName: "rectangle.split.3x1.fill")
                    Text("SegmentedControl View")
                }
            }
            NavigationButton(destination: PickerView()) {
                HStack{
                    Image(systemName: "hand.draw.fill")
                    Text("Picker View")
                }
            }
            NavigationButton(destination: ListView()) {
                HStack{
                    Image(systemName: "text.justify")
                    Text("List View")
                }
            }
            NavigationButton(destination: LocationView()) {
                    HStack{
                        Image(systemName: "map.fill")
                        Text("MapKit View")
                    }
            }
            NavigationButton(destination: WebView()) {
                HStack{
                    Image(systemName: "safari.fill")
                    Text("WKWebView View")
                }
            }
            
            NavigationButton(destination: ViewControllerAssistantView<SimpleViewController>()) {
                HStack{
                    Image(systemName: "u.circle.fill")
                    Text("UIViewController Show")
                }
            }
            NavigationButton(destination: UseKeyboardAvoidingViewView()) {
                HStack{
                    Image(systemName: "s.circle.fill")
                    Text("UIViewController In SwitfUI")
                }
            }
            PresentationButton(
                HStack{
                    Image(systemName: "rectangle.stack.fill")
                    Text("UIViewController Show")
                }
            , destination: UseKeyboardAvoidingViewView()) {
                
            }

            
            }
            .navigationBarTitle(Text("UIs"), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"].identified(by: \.self)) { deviceName in
            HomeListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif


