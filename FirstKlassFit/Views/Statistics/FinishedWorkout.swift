//
//  FinishedWorkout.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct FinishedWorkout: View {
    var workout: String
    var workoutTime: String
    
    var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(workout)
                        .foregroundColor(.baseGreyText)
                        .font(.system(size: 17))
                    
                    Text(workoutTime)
                        .foregroundColor(.basePurple)
                        .font(.system(size: 13))
                }
                .frame(height: 53)
                Spacer()
                CheckButton(action: {})
                    .padding(.trailing, 16)
            }
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 16)
            .fill(Color.baseTabBackground))
    }
}

struct FinishedWorkout_Previews: PreviewProvider {
    static var previews: some View {
        FinishedWorkout(workout: "Stability Training", workoutTime: "10:00")
    }
}
