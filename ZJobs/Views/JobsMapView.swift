//
//  JobsMapView.swift
//  ZJobs
//
//  Created by Viktor Draganov on 10.05.22.
//

import SwiftUI

struct JobsMapView: View {
    @StateObject var locationManager = LocationManager()
    
    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
    }
    
    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
    }
    var body: some View {
        VStack {
            Text("location status: \(locationManager.statusString)")
            HStack {
                Text("latitude: \(userLatitude)")
                Text("longitude: \(userLongitude)")
            }
        }
    }
}

struct JobsMapView_Previews: PreviewProvider {
    static var previews: some View {
        JobsMapView()
    }
}
