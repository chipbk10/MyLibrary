//
//  AppDelegate.swift
//  MyLibrarySampleApp
//
//  Created by Hieu Luong on 12/09/2022.
//

import UIKit
import MyLibrary

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let lib = MyLibrary()
        let text = lib.text
        
        print("text = \(text)")
        
        return true
    }
}

