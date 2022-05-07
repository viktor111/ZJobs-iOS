//
//  Job.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation

class Job{
    let id: String
    
    let title: String
    
    let creatorId: String
    
    let creator: User
    
    let difficulty: String
    
    let description: String
    
    let city: String
    
    let steps: [Step]
    
    init(id: String,
         title: String,
         creatorId: String,
         creator: User,
         difficulty: String,
         description: String,
         city: String,
         steps: [Step])
    {
        self.id = id
        self.title = title
        self.creatorId = creatorId
        self.creator = creator
        self.difficulty = difficulty
        self.description = description
        self.city = city
        self.steps = steps
    }
}
