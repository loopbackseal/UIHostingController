//
//  ModalHostingController.swift
//  UIHostingController
//
//  Created by Young Soo Hwang on 2022/08/15.
//

import UIKit
import SwiftUI

class ModalHostingController: UIHostingController< ModalHostingController.ContentView> {
    struct ContentView: View {
        var vc: UIViewController?

        var body: some View {
            Text("ViewController Container View")
                .onTapGesture {
                    vc?.dismiss(animated: true)
                }
        }
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: ContentView())
        self.rootView.vc = self
//        fatalError("init(coder:) has not been implemented")
    }
}
