//
//  workoutCardLarge.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct WorkoutCardLarge: View {
    var workout: String
    var workoutTime: String
    var image: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .opacity(0.8)
                .frame(height: 160)
            VStack(spacing: 5) {
                Text(workout)
                    .foregroundColor(.white)
                HStack(spacing: 5) {
                    Rectangle()
                        .fill(Color.basePurple)
                        .frame(width: 3, height: 15)
                    Text(workoutTime)
                        .foregroundColor(.baseGreyText)
                }
            }
            .padding([.bottom,.leading], 16)
        }
    }
}

struct WorkoutCardLarge_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCardLarge(workout: "Day 01 - Warm Up", workoutTime: "7:00 - 8:00 AM", image: "Image1")
    }
}
