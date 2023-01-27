//
//  SmallArrowButton.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct SmallArrowButton: View {
    let image: String
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                Image(systemName: image)
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.baseTabBackground)
            .clipShape(Circle())
        })
    }
}

struct SmallArrowButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            SmallArrowButton(image: "chevron.left", action: {})
        }
    }
}
