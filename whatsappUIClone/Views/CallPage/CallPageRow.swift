//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct CallPageRow: View {
    
    @State var userName:String
    @State var callTime:String
    @State var callStatus:String

    
    var body: some View {
        
        HStack{
            CircleImageView(profileImage: Image(systemName: "person.circle"))
                .frame(width: 45, height: 45)
            VStack(alignment: .leading){
                Spacer()
                Text(userName)
                    .font(.headline)
                    .padding(.leading,5)
                    .foregroundColor(callStatus.lowercased() == "missed" ? .red : .black)
                Spacer()
                HStack{
                    Image(systemName: "phone.fill")
                        .foregroundColor(.secondary)
                    Text(callStatus)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }.padding(.leading,5)
                Spacer()
            }
            Spacer()
            Text(callTime)
                .foregroundColor(.secondary)
            Button{
                
            }label: {
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.vertical)
                    .foregroundColor(.blue)
                    
            }
        }.frame(height: 60)

    }

            
}


struct CallPageRow_Previews: PreviewProvider {
    static var previews: some View {
        CallPageRow(userName: "DK", callTime: "20/02/98", callStatus: "incoming")
            .frame(height: 70)
    }
}
