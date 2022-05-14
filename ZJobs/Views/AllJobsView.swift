//
//  AllJobs.swift
//  ZJobs
//
//  Created by Viktor Draganov on 8.05.22.
//

import SwiftUI

struct AllJobsView: View {
    @StateObject var jobs: JobList = JobList(data: Job.sampleJobArrayData)
    var body: some View {
        List(jobs.data){ job in
            JobRow(job: job)
        }
    }
}

struct AllJobsView_Previews: PreviewProvider {
    static var previews: some View {
        AllJobsView()
    }
}
