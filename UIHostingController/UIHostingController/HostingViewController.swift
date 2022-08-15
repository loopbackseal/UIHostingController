//
//  HostingViewController.swift
//  UIHostingController
//
//  Created by Young Soo Hwang on 2022/08/15.
//

import UIKit
import SwiftUI

class HostingViewController: UIHostingController<HostingViewController.ContentView> {

    struct ContentView: View {
        var vc: UIViewController?
        
        var body: some View {
            NavigationView {
                Text("HostingViewController")
                    .onTapGesture {
                        vc?.dismiss(animated: true)
                    }
            }
            .navigationBarItems(leading: backBtn(vc: vc!))
        }
    }
    
    struct backBtn: View {
        let vc: UIViewController
        
        var body: some View {
            Button(action: {
                vc.dismiss(animated: true)
            }) {
                Text("Back")
                    .foregroundColor(.black)
            }
        }
    }

    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: ContentView())
        self.rootView.vc = self
//        fatalError("init(coder:) has not been implemented")
    }
}
