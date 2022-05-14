//
//  MyJobsExpanded.swift
//  ZJobs
//
//  Created by Viktor Draganov on 8.05.22.
//

import SwiftUI

struct MyJobsExpandedView: View {
    var jobs: [Job]
    
    var body: some View {
        VStack{
            HStack{
            }
            List(jobs){ job in
                MyJobRow(job: job)
            }
        }
        .navigationBarTitle("My Jobs")
    }
}

struct MyJobsExpandedView_Previews: PreviewProvider {
    static var previews: some View {
        MyJobsExpandedView(jobs: Job.sampleJobArrayData)
    }
}
