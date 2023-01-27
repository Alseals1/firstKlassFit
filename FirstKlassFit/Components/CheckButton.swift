//
//  CheckButton.swift
//  FirstKlassFit
//
//  Created by Alandis Seals on 1/26/23.
//

import SwiftUI

struct CheckButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Rectangle()
                    .fill(Color.basePurple)
                    .cornerRadius(7, corners: .allCorners)
                Image(systemName: "checkmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 9, height: 9)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 24, height: 24)
    }
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckButton(action: {})
            .previewLayout(.sizeThatFits)
    }
}
