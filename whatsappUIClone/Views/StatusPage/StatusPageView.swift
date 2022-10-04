//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//
import SwiftUI

struct StatusPageView: View {
    
    var body: some View {
        VStack{
            HStack{
                Button("Privacy"){
                    
                }
                Spacer()
                Text("Status")
                    .font(.headline)
                    .offset(x: -25, y: 0)
                Spacer()
            }.padding()
            Rectangle().frame(height: 35)
                .foregroundColor(.gray).opacity(0.25)
            HStack{
                ZStack{
                    CircleImageView(profileImage: Image(systemName: "person.fill"),circleFrame: (30,30))
                    Circle()
                        .offset(.init(x: 12, y: 12))
                        .foregroundColor(.blue)
                        .frame(width: 15, height: 15)
                        .overlay(
                            Button("+"){
                            
                            }.foregroundColor(.white)
                                .offset(.init(width: 12, height: 12)))
                }.padding(.leading)
                HStack{
                    VStack(alignment: .leading){
                        Text("My Status")
                            .font(.headline)
                        Text("Add to my status")
                            .font(.subheadline)
                    }
                    Spacer()
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.gray.opacity(0.15))
                        .overlay(Image(systemName: "camera.fill").foregroundColor(.blue)
                        )
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.gray.opacity(0.15))
                        .overlay(Image(systemName: "pencil").foregroundColor(.blue)
                        )
                }.padding()
            }
            Rectangle().frame(height: 45)
                .foregroundColor(.gray).opacity(0.25)
            Spacer().frame(height: 40)
            VStack(){
                Text("No recent updates to show right now.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
            }.frame(height: 50)
            Rectangle()
                .foregroundColor(.gray).opacity(0.25)
        }
    }
}

struct StatusPageView_Previews: PreviewProvider {
    static var previews: some View {
        StatusPageView()
    }
}
