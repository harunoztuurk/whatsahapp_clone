//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//v

import SwiftUI

@main
struct whatsappUICloneApp: App {
    
    public var StackBackgroundColor:UIColor = .white
    
    var body: some Scene {
        WindowGroup {
            TabBarPageView()
        }
    }
}
