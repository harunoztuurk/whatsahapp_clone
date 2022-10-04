//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct CallPageView: View {
    
    @State var selected:Int = 0
    @State var enteredString:String = "Hello World"
    @State private var CallPageReqData:[CallPageModel] = CallPageResponse
    var body: some View {
        VStack{
            HStack{
                Button("Edit"){
                    print("Edit Tapped")
                }
                Spacer()
                Picker(selection: $selected, content: {
                    Text("All").tag(0)
                    Text("Missed").tag(1)
                }, label: {
                    Spacer()
                    Text("hello")
                    Spacer()
                }).pickerStyle(.segmented)
                    .frame(width: 150)
                
                Spacer()
                Button(action: {
                    print("New Message Tapped")
                }, label: {
                    Image(systemName: "phone")
                        
                })
            }.padding()
            if selected == 0{
                List(CallPageReqData){ calldataIndex in
                    CallPageRow(userName: calldataIndex.userName, callTime: calldataIndex.time, callStatus: calldataIndex.status)
                }.listStyle(.plain)
            }else if selected == 1{
                List(CallPageReqData.filter{ $0.status.lowercased() == "missed" }){ calldataIndex in
                    CallPageRow(userName: calldataIndex.userName, callTime: calldataIndex.time, callStatus: calldataIndex.status)
                }.listStyle(.plain)
            }
            Spacer()
        }
    }
}

struct CallPageView_Previews: PreviewProvider {
    static var previews: some View {
        CallPageView()
    }
}
