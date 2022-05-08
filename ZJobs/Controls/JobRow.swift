//
//  JobRow.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct JobRow: View {
    var job: Job
    var body: some View {
        HStack{
            if job.isCompleated{
                NavigationLink{
                    MyJobDetails(job: job)
                } label: {
                    HStack{
                        Image(systemName: "lanyardcard.fill")
                        Text(job.title)
                    }
                }
                
            }
            else{
                NavigationLink{
                    MyJobDetails(job: job)
                } label: {
                    HStack{
                        Image(systemName: "lanyardcard")
                        Text(job.title)
                    }
                }
            }
        }
    }
}

struct JobRow_Previews: PreviewProvider {
    static var previews: some View {
        JobRow(job: Job.sampleJobData)
    }
}
