//
//  User.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import Foundation

class User{
    let id: String
    
    let firstName: String
    
    let lastName: String
    
    let userName: String
    
    let email: String
    
    let jobs: [Job]
    
    init(id: String, firstName: String, lastName: String, userName: String, email: String, jobs: [Job]){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.email = email
        self.jobs = jobs
    }
}
