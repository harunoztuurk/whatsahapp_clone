//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct ChatListRow: View {
    
    @State var userName:String
    @State var message:String
    @State var messageTime:String
//    @State var userImage:Image
    
    var body: some View {
        
        HStack{
            CircleImageView(profileImage: Image(systemName: "person.circle"))
                .clipShape(Circle())
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text(userName)
                            .padding([.leading,.top])
                            .lineLimit(1)
                            .font(.headline)
                        Spacer()
                        Text(message)
                            .padding([.bottom,.leading])
                            .lineLimit(2)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text(messageTime)
                            .padding(.top)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                }
                Divider()
            }
           
        }
        
        //        HStack{
        //            Image(systemName: "magnifyingglass")
        //                .clipShape(Circle())
        //            HStack(spacing: 0){
        //                VStack{
        //                HStack(spacing: 0.0){
        //                Text(userName)
        //                    .lineLimit(1)
        //                    .font(.headline)
        //                Spacer()
        //                    Text(message)
        //                        .lineLimit(1)
        //                        .font(.caption)
        //                }.padding()
        //                VStack(spacing: 0){
        //                Text(messageTime)
        //                        .font(.subheadline)
        //                        .fontWeight(.thin)
        //                        .lineLimit(1)
        //                Spacer()
        //                Text(" 3 ")
        //                    .foregroundColor(.white)
        //                    .background(.green)
        //                    .font(.caption2)
        //                    .clipShape(Circle())
        //                }.padding()
        //            }
        //                Divider()
        //            }
        //
        //        }.padding()
        //
    }
}

struct ChatListRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatListRow(userName: "kedi Billa", message: "வாழா என் வாழ்வை வாழவே", messageTime: "21:24")
            .frame(height: 90)
    }
}


//HStack{
//    Spacer()
//    Image(systemName: "magnifyingglass")
//        .clipShape(Circle())
//    VStack(spacing: -25.0){
//        HStack(alignment: .bottom, spacing: 0.0){
//        Text("Your Name")
//            .lineLimit(1)
//            .font(.headline)
//        Spacer()
//        Text("16:24 am")
//            .font(.subheadline)
//            .fontWeight(.thin)
//            .lineLimit(1)
//        }.padding()
//        HStack(alignment: .top, spacing: 0){
//        Text("The message has shown.")
//            .lineLimit(1)
//            .font(.caption)
//        Spacer()
//        Text(" 3 ")
//            .foregroundColor(.white)
//            .background(.green)
//            .font(.caption2)
//            .clipShape(Circle())
//        }.padding()
//    }
//
//}
