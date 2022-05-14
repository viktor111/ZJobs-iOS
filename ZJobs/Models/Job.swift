//
//  Job.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation
import SwiftUI

class Job : ObservableObject, Identifiable{
    @Published var id: String
    
    @Published var title: String
    
    @Published var creatorId: String
        
    @Published var difficulty: String
    
    @Published var description: String
    
    @Published var city: String
    
    @Published var isCompleated: Bool
    
    @Published var createdOn: Date
    
    @Published var steps: [Step]
    
    
    init(id: String,
         title: String,
         creatorId: String,
         difficulty: String,
         description: String,
         city: String,
         isCompleated: Bool,
         createdOn: Date,
         steps: [Step])
    {
        self.id = id
        self.title = title
        self.creatorId = creatorId
        self.difficulty = difficulty
        self.description = description
        self.city = city
        self.isCompleated = isCompleated
        self.createdOn = createdOn
        self.steps = steps
    }
}

extension Job{
    
    static let empty: Job = Job(id: "", title: "", creatorId: "", difficulty: "", description: "", city: "", isCompleated: false, createdOn: Date(), steps: [])
    
    static let sampleJobData: Job = Job(id: "1",
                                        title: "Take money to grandma",
                                        creatorId: "1",
                                        difficulty: "Medium",
                                        description: "Take the given money to the location of grandmother",
                                        city: "Stara Zagora",
                                        isCompleated: true,
                                        createdOn: Date(),
                                        steps: Step.sampleStepArrayData)
    
    static let sampleJobArrayData: [Job] = [Job(id: "1",
                                                title: "Take money to grandma",
                                                creatorId: "1",
                                                difficulty: "Medium",
                                                description: "Take the given money to the location of grandmother",
                                                city: "Stara Zagora",
                                                isCompleated: true,
                                                createdOn: Date(),
                                                steps: Step.sampleStepArrayData),
                                            Job(id: "2",
                                                title: "Walk my dog",
                                                creatorId: "1",
                                                difficulty: "Easy",
                                                description: "Walk my dog for 10 min",
                                                city: "Stara Zagora",
                                                isCompleated: false,
                                                createdOn: Date(),
                                                steps: Step.sampleStepArrayData),
                                            Job(id: "3",
                                                title: "Buy pills from drug store",
                                                creatorId: "1",
                                                difficulty: "Easy",
                                                description: "By antibiotic pills form the drug store and bring them to me",
                                                city: "Stara Zagora",
                                                isCompleated: true,
                                                createdOn: Date(),
                                                steps: Step.sampleStepArrayData),
                                            Job(id: "4",
                                                title: "Drive my mom to Burgas",
                                                creatorId: "1",
                                                difficulty: "Medium",
                                                description: "Drive my mom tomorrow at 9am to Burgas",
                                                city: "Stara Zagora",
                                                isCompleated: false,
                                                createdOn: Date(),
                                                steps: Step.sampleStepArrayData),
                                            Job(id: "5",
                                                title: "Take out my trash",
                                                creatorId: "1",
                                                difficulty: "Easy",
                                                description: "Take out my trash while im at the office",
                                                city: "Stara Zagora",
                                                isCompleated: false,
                                                createdOn: Date(),
                                                steps: Step.sampleStepArrayData)]
}
