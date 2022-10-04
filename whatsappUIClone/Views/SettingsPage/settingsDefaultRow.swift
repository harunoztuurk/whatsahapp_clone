//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//
import SwiftUI

struct settingsDefaultRow: View {
    
    var settingIcon:Image
    var settingBGColor:Color
    var settingName:String
    var dividerHidden:Bool
    
    var body: some View {
        HStack{
            settingIcon
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .background(settingBGColor)
                        .cornerRadius(5)
                        .padding([.trailing])
            VStack(alignment: .leading){
                if dividerHidden{
                    Text(settingName)
                }else{
                    Text(settingName)
                    .padding(.top,9)
                    Divider()
                }
            }
        }
    }
}

struct settingsDefaultRow_Previews: PreviewProvider {
    static var previews: some View {
        settingsDefaultRow(settingIcon: Image(systemName: "person.circle"), settingBGColor: .gray, settingName: "notification", dividerHidden: true)
        settingsDefaultRow(settingIcon: Image(systemName: "person.circle"), settingBGColor: .gray, settingName: "notification", dividerHidden: true)

    }
}
