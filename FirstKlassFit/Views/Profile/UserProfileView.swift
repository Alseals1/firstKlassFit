//
//  UserProfileView.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/31/23.
//

import SwiftUI

struct UserProfileView: View {
    var textData = ["Edit Profile", "Privacy Policy", "Setting", "Sign Out"]
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 5) {
                profileHeaderSection
                profileSettingListSection
                
            }
            .padding(.horizontal, 28)
        
    }
    var profileHeaderSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(spacing: 65) {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .fill(Gradient(colors: [.baseBackground.opacity(0.7),.darkPurple, .lightPurple]))
                        .frame(width: 104, height: 104)
                    Image("profilePicture")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                
                HStack(spacing: 23) {
                    Rectangle()
                        .frame(width: 1, height: 103)
                    
                    VStack(alignment: .leading) {
                        Text("Joined")
                            .foregroundColor(Color.baseTabBackground)
                            .font(.system(size: 11))
                        Text("2 mon ago")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: -10) {
                Text("Julietta")
                    .foregroundColor(.white)
                    .font(.system(size: 36))
                Text("Moonwalk")
                    .foregroundColor(Color.baseTabBackground)
                    .font(.system(size: 36))
            }
        }
        .padding(.vertical, 36)
    }
    var profileSettingListSection: some View {
        List {
            ForEach(textData, id: \.self) { text in
              Button(action: {
              }, label: {
                  HStack {
                      Text(text)
                          .padding(.vertical)
                      Spacer()
                      Image(systemName: "chevron.right")
                  }
              })
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            UserProfileView()
        }
    }
}
