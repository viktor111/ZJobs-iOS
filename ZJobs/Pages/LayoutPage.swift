//
//  LayoutPage.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct LayoutPage: View {
    var body: some View {
        TabView{
            MyAccountPage()
                .tabItem{
                    Label("Account", systemImage: "person")
                }
            JobsPage()
                .tabItem{
                    Label("Jobs", systemImage: "folder.fill")
                }
            SettingsPage()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct LayoutPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPage()
    }
}
