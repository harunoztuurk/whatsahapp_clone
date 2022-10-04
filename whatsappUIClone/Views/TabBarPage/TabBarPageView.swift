//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//
import SwiftUI

struct TabBarPageView: View {
    
    @State private var selected = 4
    
    var body: some View {
        TabView(selection: $selected){
            StatusPageView()
                .tabItem{
                    Label("Status", systemImage: "circle.dashed")
                }
            CallPageView()
                .tabItem{
                    Label("Call", systemImage: "phone.fill")
                }
            CameraPageView()
                .tabItem{
                    Label("Camera", systemImage: "camera.fill")
                }
            ChatPageView()
                .badge(2)
                .tabItem{
                    Label("Chat", systemImage: "paperplane.fill")
                }
                .tag(4)
            SettingsPageView()
                .tabItem{
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }
    }
}

struct TabBarPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarPageView()
    }
}
