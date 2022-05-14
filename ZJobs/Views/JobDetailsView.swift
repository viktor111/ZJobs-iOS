//
//  JobDetails.swift
//  ZJobs
//
//  Created by Viktor Draganov on 9.05.22.
//

import SwiftUI

struct JobDetailsView: View {
    var job: Job

    var body: some View {
        VStack{
            Text(job.title)
                .font(.title)
            HStack{
                Text(DateFormatter.toString(date: job.createdOn))
            }
            List(job.steps){step in
                StepRow(step: step)
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            Spacer()
        }
    }
}

struct JobDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailsView(job: Job.sampleJobData)
    }
}
