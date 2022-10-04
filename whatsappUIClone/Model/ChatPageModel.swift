//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import Foundation

// MARK: - ChatPageModel
struct ChatPageModel: Codable, Identifiable ,Hashable {
    
    let name: String
    let userId: Int
    let userImage: String
    let message: [Message]
    var id:Int{
        return userId
    }
}

// MARK: - Message
struct Message: Codable, Hashable {
    let msgID: Int
    let message, time: String
}
