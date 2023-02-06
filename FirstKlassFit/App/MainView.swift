//
//  MainView.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                    Text("Home")
                }
                
                
            
            StatisticsView()
                .tabItem {
                    Label("Stats", systemImage: "waveform.path.ecg")
                }
            
            NotificationView()
                .tabItem {
                    Label("Notification", systemImage: "bell.fill")
                }
            
            UserProfileView()
                .tabItem {
                   Label("Profile", systemImage: "person.fill")
                }
        }
        .tint(.basePurple)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseBackground
            MainView()
        }
    }
}
