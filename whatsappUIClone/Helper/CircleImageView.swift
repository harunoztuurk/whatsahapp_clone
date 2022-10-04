//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct CircleImageView: View {
    var profileImage:Image
    var circleFrame:(width:CGFloat?,height:CGFloat?) = (50,50)
    var body: some View {
        profileImage
            .resizable()
            .frame(width: circleFrame.width, height: circleFrame.height)
            .clipShape(Circle())
//            .overlay{
//                Circle().stroke(.green ,lineWidth: 1.0)
//            
//            }
//            .shadow(color: .gray, radius: 7, x: 0, y: 0)
            
    
}
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(profileImage: Image(systemName: "person"))
    }
}
