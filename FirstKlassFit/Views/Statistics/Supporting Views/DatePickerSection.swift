//
//  DatePickerSection.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 2/6/23.
//

import SwiftUI

struct DatePickerSection: View {
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

struct DatePickerSection_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSection()
    }
}
