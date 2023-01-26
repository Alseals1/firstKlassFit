//
//  NewWorkout.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct NewWorkout: View {
    var body: some View {
        VStack {
            HStack {
                Text("New Workouts")
                    .font(.system(size: 17))
                .foregroundColor(.white)
                
                Spacer()
            }
               
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...5, id: \.self) { workout in
                        WorkoutCardSmall(workout: "Warm Up", workoutInfo: "01 Workout", image: "Image3")
                        
                    }
                    .cornerRadius(16)
                .frame(height: 205)
                }
            }
        }
        
    }
}

struct NewWorkout_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            NewWorkout()
        }
    }
}