//
//  UserProfileView.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/31/23.
//

import SwiftUI

struct UserProfileView: View {
    var text = ["Edit Profile", "Privacy Policy", "Setting", "Sign Out"]
    
    var body: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 5) {
                profileHeader
                profileSettingList
                
            }
            .padding(.horizontal, 28)
        }
    }
    var profileHeader: some View {
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
    var profileSettingList: some View {
        List {
            ForEach(text, id: \.self) { edit in
              Button(action: {
              }, label: {
                  HStack {
                      Text(edit)
                          .padding(.vertical)
                      Spacer()
                      Image(systemName: "chevron.right")
                  }
              })
                .foregroundColor(.white)
            }
            .listRowBackground(Color.baseBackground)
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
