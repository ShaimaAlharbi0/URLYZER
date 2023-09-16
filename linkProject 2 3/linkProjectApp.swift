//
//  linkProjectApp.swift
//  linkProject
//
//  Created by Hibah Abdullah Alatawi on 17/02/1445 AH.
//

import SwiftUI
import FirebaseCore
import Firebase


@main
struct linkProjectApp: App {
    @UIApplicationDelegateAdaptor  var appDelegate: AppDelegate
    @AppStorage("didOnboard")  var didOnboard: Bool = false
    @AppStorage("firstTime")  var firstTime = true
   
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            if didOnboard {
//                SplachScreenView()
//            } else {
//                if firstTime {
//                    OnBoardingView(didOnboard: didOnboard)
//                } else {
//                    MainView()
//                        .environmentObject(AuthServiceViewModel())
//                }
//            }
            SplachScreenView()
                .preferredColorScheme(.light)
                
        }
    }
}
