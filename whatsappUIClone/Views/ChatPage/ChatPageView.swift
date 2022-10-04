//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct ChatPageView: View {
    
    var chatArray:[Int] = [1,2,3,4,5,6,7,8,9,10]
    
    @State private var ChatPageReqData:[ChatPageModel] = ChatPageResponse
    @State private var searchText = "Search"
    
    var body: some View {
        
        VStack{
            HStack{
                Button("Edit"){
                    print("Edit Tapped")
                }
                Spacer()
                Button(action: {
                    print("New Message Tapped")
                }, label: {
                    Image(systemName: "square.and.pencil")
                })
            }.padding()
            .padding(.bottom,-15)
            HStack{
            Text("Chats")
                .font(.largeTitle)
                .bold()
                Spacer()
            }.padding(.horizontal)
            .padding(.bottom,5)

            HStack{
                Image(systemName: "magnifyingglass").padding(.vertical,15)
                    .padding([.leading],10)
                TextField("Search", text: $searchText){
                }
            }                .background(Color(.init(gray: 0.7, alpha: 1)).clipShape(RoundedRectangle(cornerRadius:15)))
                .opacity(0.5)
                .padding(.horizontal)
            HStack{
                Button("Broadcast Lists"){
                    print("Broadcast Lists Tapped")
                }
                Spacer()
                Button("New Group"){
                    print("Broadcast Lists Tapped")
                }
            }.padding([.horizontal,.top])
            Divider()
            NavigationView{
                
                List(ChatPageReqData){ chatDataIndex in
                    
                    NavigationLink{
                        CallPageView()
                            .navigationBarTitleDisplayMode(.inline)
//                            .scaledToFill()
                    } label:{
                        ChatListRow(userName: chatDataIndex.name, message: chatDataIndex.message[0].message, messageTime: chatDataIndex.message[0].time)
                        
                    }
                    
                    .listRowSeparator(.hidden, edges: .all)

                }.listStyle(.plain)
                .navigationBarHidden(true)
            }
        
    }
}
}

struct ChatPageView_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageView()
//            .previewDevice("iPhone 11")
    }
}


//struct AndroidWhatsappview: View {
//    
//    var chatArray:[Int] = [1,2,3,4,5,6,7,8,9,10]
//    
//    var body: some View {
//        VStack{
//            HStack{
//                Text("WhatsApp")
//                    .font(.title2)
//                    .fontWeight(.regular)
//                    .foregroundColor(.secondary)
//                Spacer()
//
//                Button{
//                    print("magnifyingglass")
//                }label: {
//                    Image(systemName: "magnifyingglass")
//                        .foregroundColor(Color.gray)
//                }
//                Button{
//                    print("slidermagnifyingglass")
//                }label: {
//                    Image(systemName: "slider.horizontal.3")
//                        .foregroundColor(Color.gray)
//                }
//            }
//            .padding()
//            List(chatArray, id: \.self){ array in
//                ChatListRow(userName: chatDataIndex.name, message: chatDataIndex.message[0].message, messageTime: chatDataIndex.message[0].time)
//                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//            }
//
//            Spacer()
//
//        }
//    }
//}
