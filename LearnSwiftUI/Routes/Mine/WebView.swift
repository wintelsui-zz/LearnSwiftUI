//
//  WebView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/14.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView(frame: .zero)
        return view
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        
        view.load(URLRequest(url: URL(string: "https://developer.apple.com")!))
    }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
#endif
