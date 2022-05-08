//
//  JobList.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct MyJobListModular: View {
    var jobs: [Job]
    var body: some View {
        NavigationView{
            List(jobs){ job in
                ModularMyJobList(job: job)                
            }
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            .navigationBarHidden(true)
        }
    }
}

struct JobList_Previews: PreviewProvider {
    static var previews: some View {
        MyJobListModular(jobs: Job.sampleJobArrayData)
    }
}
