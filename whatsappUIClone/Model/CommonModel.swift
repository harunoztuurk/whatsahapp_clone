//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import Foundation


let ChatPageResponse: [ChatPageModel] = load(name: "chatData.json")
let CallPageResponse: [CallPageModel] = load(name: "callData.json")
let SettingPageResponse: [SettingPageModel] = load(name: "settingData.json")

func load<T: Decodable>(name filename:String) -> T{
    
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}
