//
//  StatisticsView.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    CustomDatePicker()
                }
                
                VStack(spacing: 30) {
                    ProgressInformation()
                    
                    VStack(alignment: .leading){
                        Text("Finished Workout")
                            .font(.system(size: 17))
                        ForEach(1...5, id: \.self) { _  in
                            FinishedWorkout(workout: "Stability Training", workoutTime: "10:00")
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}

struct CustomDatePicker: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    SmallArrowButton(image: "chevron.left") {
                // MARK: - Calender Action Goes Here
                    }
                    Spacer()
                    Text("January")
                    Spacer()
                    SmallArrowButton(image: "chevron.right") {
                        // MARK: - Calender Action Goes Here
                    }
                }
                .padding(.bottom, 29)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1...31, id: \.self) { day in
                            DatePill(day: "M", date: "26", color: .baseTabBackground)
                        }
                    }
                }
            }
            .padding(.horizontal, 24)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    .frame(height: 203)
    
        
    }
}

struct ProgressInformation: View {
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 8)
                    .fill(Gradient(colors: [.darkPurple, .lightPurple]))
                
                
                VStack(spacing: 5){
                    HStack {
                        Text("745")
                            .font(.system(size: 36))
                        Text("Cal")
                            .font(.system(size: 24))
                    }
                    Text("Active Calories")
                        .font(.system(size: 13))
                        .foregroundColor(Color.baseGreyText)
                }
            }
            .frame(height: 168)
            
            HStack(spacing: 24) {
                ProgressCircle(statsDescription: "Steps", stat: "6540", statAcronym: nil)
                ProgressCircle(statsDescription: "Time", stat: "45", statAcronym: "min")
                ProgressCircle(statsDescription: "Heart", stat: "72", statAcronym: "bpm")
            }
        }
    }
}
