//
//  JobsPage.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct JobsPage: View {
    @StateObject var jobs: JobList = JobList(data: Job.sampleJobArrayData)
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink{
                    AllJobsView()
                } label: {
                    HStack{
                        Image(systemName: "list.dash.header.rectangle")
                        Text("Jobs in area")
                    }
                }
                NavigationLink{
                    TakenJobsView()
                } label: {
                    HStack{
                        Image(systemName: "menubar.arrow.down.rectangle")
                        Text("Taken jobs")
                    }
                }
                NavigationLink{
                    CreateJobView()
                } label: {
                    HStack{
                        Image(systemName: "plus.rectangle")
                        Text("Post a job")
                    }
                    
                }
                NavigationLink{
                    JobsMapView()
                } label: {
                    HStack{
                        Image(systemName: "map")
                        Text("Open map")
                    }
                }
            }
            .navigationTitle("Jobs")
        }
    }
    
}
struct JobsPage_Previews: PreviewProvider {
    static var previews: some View {
        JobsPage(jobs: JobList(data: Job.sampleJobArrayData))
    }
}
