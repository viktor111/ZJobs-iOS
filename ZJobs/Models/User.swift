//
//  User.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation

class User : ObservableObject{
    @Published var id: String
    
    @Published var imageUrl: String
    
    @Published var firstName: String
    
    @Published var lastName: String
    
    @Published var userName: String
    
    @Published var email: String
    
    @Published var jobs: [Job]
    
    init(id: String,
         imageUrl: String,
         firstName: String,
         lastName: String,
         userName: String,
         email: String,
         jobs: [Job])
    {
        self.id = id
        self.imageUrl = imageUrl
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.email = email
        self.jobs = jobs
    }
}

extension User{
    static let sampleUserData: User = User(id: "1",
                                           imageUrl: "user1",
                                           firstName: "Viktor",
                                           lastName: "Draganov",
                                           userName: "zvado",
                                           email: "swifrorlilko@gmail.com",
                                           jobs:Job.sampleJobArrayData)
}
