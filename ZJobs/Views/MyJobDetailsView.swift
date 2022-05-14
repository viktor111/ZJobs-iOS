//
//  MyJobDetails.swift
//  ZJobs
//
//  Created by Viktor Draganov on 8.05.22.
//

import SwiftUI

struct MyJobDetailsView: View {
    var job: Job
    var body: some View {
        VStack{
            Text(job.title)
            Spacer()
        }
    }
}

struct MyJobDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MyJobDetailsView(job: Job.sampleJobData)
    }
}
