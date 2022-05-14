//
//  SettingsPage.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct SettingsPage: View {
    @State private var allowLocation = true
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        List{
            Button("Allow location"){                
                locationManager.requestAuthorisation(always: true)
            }
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
