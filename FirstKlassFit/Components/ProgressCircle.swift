//
//  ProgressCircle.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct ProgressCircle: View {
    let statsDescription: String
    let stat: String
    let statAcronym: String?
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5)
                .fill(Gradient(colors: [.darkPurple, .lightPurple]))
      
            
            VStack(spacing: 10){
                Text(statsDescription)
                    .font(.system(size: 13))
                    .foregroundColor(Color.baseGreyText)
                
                HStack(spacing: 3) {
                    Text(stat)
                        .font(.system(size: 22))
                    Text(statAcronym ?? "")
                        .font(.system(size: 13))
                }
                
             
            }
            .padding()
        }
        .frame(height: 100)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle(statsDescription: "Steps", stat: "6540", statAcronym: "min")
    }
}
