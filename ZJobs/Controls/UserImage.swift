//
//  UserImage.swift
//  ZJobs
//
//  Created by Viktor Draganov on 7.05.22.
//

import SwiftUI

struct UserImage: View {
    @State var imageUrl: String
    
    var body: some View {
        Image(imageUrl)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .scaledToFit()
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 4)
    }
}

struct UserImage_Previews: PreviewProvider {
    static var previews: some View {
        UserImage(imageUrl: "user1")
    }
}
