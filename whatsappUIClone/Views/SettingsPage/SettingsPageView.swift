//
//  ContentView.swift
//  whatshapp-clone
//
//  Created by Harun Öztürk on 4.10.2022.
//
import SwiftUI

struct SettingsPageView: View {
    
    
    var data = SettingPageResponse
    
    var body: some View {
        
        VStack{
            Text("Settings")
                .font(.title3)
            NavigationView{
                
                List(data){ indexData in
                    
                    
                    Section{
                        ForEach(indexData.title, id: \.self){ titleName in
                            NavigationLink{
//                                CallPageView()
                            }label:{
                                
                                if indexData.id == 0{
                                    HStack{
                                        CircleImageView(profileImage: Image(systemName: "person.fill"),circleFrame: (35,35))
                                            .background()
                                            .padding([.vertical,.trailing,.top])
                                        VStack(alignment: .leading, spacing: 4.0){
                                        Text("Dilip Kumar M")
                                                .font(.title2)
                                        Text("iOS Developer")
                                                .font(.subheadline)
                                                .foregroundColor(.secondary)
                                        }
                                    }
                                }else{
                                                                        
                                    if (indexData.title.last == titleName){
                                        settingsDefaultRow(settingIcon: indexData.ColorAndImage(title: titleName).0, settingBGColor: indexData.ColorAndImage(title: titleName).1, settingName: titleName, dividerHidden: true)
                                    }else{
                                        settingsDefaultRow(settingIcon: indexData.ColorAndImage(title: titleName).0, settingBGColor: indexData.ColorAndImage(title: titleName).1, settingName: titleName, dividerHidden: false)
                                    }
                                    
                                   
                                }
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 10))
                }  .listStyle(.insetGrouped)
                    .navigationBarHidden(true)
                    
            }
        }
    }
}


struct SettingsPageView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPageView()
    }
}
