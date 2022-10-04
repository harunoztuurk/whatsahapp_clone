//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import Foundation

// MARK: - CallPageModel
struct CallPageModel: Codable,Identifiable, Hashable {
    let id: Int
    let userName, status, time: String
}

