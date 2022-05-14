//
//  JobList.swift
//  ZJobs
//
//  Created by Viktor Draganov on 8.05.22.
//

import Foundation

class JobList : ObservableObject{
    @Published var data: [Job]
    
    init(data: [Job]){
        self.data = data
    }
}
