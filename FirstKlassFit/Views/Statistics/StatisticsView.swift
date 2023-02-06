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
                    DatePickerSection()
                }
                
                VStack(spacing: 30) {
                    ProgressInformation()
                    
                    VStack(alignment: .leading){
                        Text("Finished Workout")
                            .font(.system(size: 17))
                        ForEach(1...5, id: \.self) { _  in
                            FinishedWorkout()
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
