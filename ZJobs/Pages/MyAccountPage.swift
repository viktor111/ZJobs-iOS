//
//  MyAccountPage.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct MyAccountPage: View {
    @StateObject var user: User = User.sampleUserData
    
    var body: some View {
        NavigationView{
            VStack{
                UserImage(imageUrl: user.imageUrl)
                HStack(spacing: 3){
                    Text(user.firstName)
                    Text(user.lastName)
                }
                .padding()
                
                Text(user.userName)
                    .font(.subheadline)
                Text(user.email)
                    .font(.subheadline)
                Divider()
                HStack(){
                    Text("My Jobs")
                        .font(.title)
                    
                    NavigationLink{
                        MyJobsExpandedView(jobs: user.jobs)
                    } label: {
                        Image(systemName: "arrow.up.left.and.arrow.down.right")
                            
                    }
                    .offset(x: 50, y: 0)
                }
                
                MyJobListModular(jobs: user.jobs)
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct MyAccountPage_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountPage()
    }
}
