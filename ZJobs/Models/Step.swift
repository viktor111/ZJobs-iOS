//
//  Step.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation

class Step : ObservableObject, Identifiable{
    @Published var id: String
    
    @Published var jobId: String
    
    @Published var description: String
    
    @Published var location: String
    
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

extension Step{
    static let sampleStepData : Step = Step(id: "1",
                                            jobId: "1",
                                            description: "Deliver money to ulitsa 14",
                                            location: "Stara Zagora ulitsa 14")
    
    static let sampleStepArrayData : [Step] = [Step(id: "1",
                                                    jobId: "1",
                                                    description: "Deliver money to ulitsa 14",
                                                    location: "Stara Zagora ulitsa 14"),
                                               Step(id: "2",
                                                    jobId: "2",
                                                    description: "Go to park",
                                                    location: "Park aqzmo"),
                                               Step(id: "3",
                                                    jobId: "1",
                                                    description: "Take mom from work",
                                                    location: "bul. gorski bik"),
                                               Step(id: "4",
                                                    jobId: "1",
                                                    description: "Take ou the trash in the bin",
                                                    location: "surnena gora 27")]
}
