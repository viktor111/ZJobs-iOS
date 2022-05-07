//
//  Step.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation

class Step{
    let id: String
    
    let jobId: String
    
    let description: String
    
    let location: String
    
    init(id: String,
         jobId: String,
         description: String,
         location: String)
    {
        self.id = id
        self.jobId = jobId
        self.description = description
        self.location = location
    }
}
