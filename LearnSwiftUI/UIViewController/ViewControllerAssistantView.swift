//
//  ViewControllerAssistantView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/14.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct ViewControllerAssistantView<T: UIViewController> : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerAssistantView>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ViewControllerAssistantView>) {
    }
}

#if DEBUG
struct ViewControllerHelperView_Previews : PreviewProvider {
    static var previews: some View {
        ViewControllerAssistantView<SimpleViewController>()
    }
}
#endif
