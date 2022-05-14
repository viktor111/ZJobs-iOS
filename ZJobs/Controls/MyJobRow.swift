//
//  JobRow.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct MyJobRow: View {
    var job: Job
    var body: some View {
        HStack{
            if job.isCompleated{
                NavigationLink{
                    MyJobDetailsView(job: job)
                } label: {
                    HStack{
                        Image(systemName: "lanyardcard.fill")
                        Text(job.title)
                    }
                }
                
            }
            else{
                NavigationLink{
                    MyJobDetailsView(job: job)
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

struct MyJobRow_Previews: PreviewProvider {
    static var previews: some View {
        MyJobRow(job: Job.sampleJobData)
    }
}
