//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//

import SwiftUI

struct DesignCircle: View {
    var body: some View {
        Circle()
            .stroke(.blue,lineWidth: 3)
            .foregroundColor(.clear)
            .overlay(Text("3").frame(width: 200, height: 200, alignment: .leading))
//        ZStack{
//            Circle()
//                .frame(width: 250, height: 250, alignment: .leading)
//            Text("3").foregroundColor(.green).font(.system(size: 230, weight: .heavy, design: .rounded)).background(.yellow)
//        }
    }
}

struct DesignCircle_Previews: PreviewProvider {
    static var previews: some View {
        DesignCircle()
    }
}
