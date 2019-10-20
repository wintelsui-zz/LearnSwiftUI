//
//  HomeListView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/5.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

struct HomeListView : View {
    
    @State private var show_modal = false
    
    var body: some View {
            List {
                NavigationLink(destination: SimpleView()) {
                    HStack{
                        Image(systemName: "rectangle.3.offgrid.fill")
                        Text("Simple View")
                    }
                }
                NavigationLink(destination: TextFieldView()) {
                    HStack{
                        Image(systemName: "textformat.abc.dottedunderline")
                        Text("TextField View")
                    }
                }
                NavigationLink(destination: SegmentedControlView()) {
                    HStack{
                        Image(systemName: "rectangle.split.3x1.fill")
                        Text("SegmentedControl View")
                    }
                }
                NavigationLink(destination: PickerView()) {
                    HStack{
                        Image(systemName: "hand.draw.fill")
                        Text("Picker View")
                    }
                }
                NavigationLink(destination: ListView()) {
                    HStack{
                        Image(systemName: "text.justify")
                        Text("List View")
                    }
                }
                NavigationLink(destination: LocationView()) {
                    HStack{
                        Image(systemName: "map.fill")
                        Text("MapKit View")
                    }
                }
                NavigationLink(destination: WebView()) {
                    HStack{
                        Image(systemName: "safari.fill")
                        Text("WKWebView View")
                    }
                }
                NavigationLink(destination: ViewControllerAssistantView<SimpleViewController>()) {
                    HStack{
                        Image(systemName: "u.circle.fill")
                        Text("UIViewController Show")
                    }
                }
                NavigationLink(destination: UseKeyboardAvoidingViewView()) {
                    HStack{
                        Image(systemName: "s.circle.fill")
                        Text("UIViewController In SwitfUI")
                    }
                }
                Button(action: {
                    self.show_modal = true
                }) {
                    HStack{
                        Image(systemName: "s.circle.fill")
                        Text("Present Modal View")
                    }
                }.sheet(isPresented: self.$show_modal) {
                    PresentModalView()
                }
            }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
#endif



