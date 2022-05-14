//
//  CreateJob.swift
//  ZJobs
//
//  Created by Viktor Draganov on 8.05.22.
//

import SwiftUI

struct CreateJobView: View {
    @StateObject private var newJob: Job = Job.empty
    
    var body: some View {
        Form{
            Section(header: Text("Details")){
                TextField("Title", text: $newJob.title)
                TextField("Description", text: $newJob.description)
                TextField("City", text: $newJob.city)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            
            Text(newJob.title)
        }
    }
}

struct CreateJobView_Previews: PreviewProvider {
    static var previews: some View {
        CreateJobView()
    }
}
