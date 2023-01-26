//
//  WorkoutCardSmall.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct WorkoutCardSmall: View {
    var workout: String
    var workoutInfo: String
    var image: String
    
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.8)
            
            VStack(spacing: 5) {
                Text(workout)
                    .foregroundColor(.white)
                HStack(spacing: 5) {
                    Rectangle()
                        .fill(Color.basePurple)
                        .frame(width: 3, height: 15)
                    Text(workoutInfo)
                        .foregroundColor(.baseGreyText)
                }
            }
            .padding([.bottom,.leading], 16)
        }
        .cornerRadius(16)
    .frame(height: 205)
    }
}

struct WorkoutCardSmall_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCardSmall(workout: "Warm Up", workoutInfo: "01 Workout", image: "Image3")
    }
}
