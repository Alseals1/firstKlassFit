import SwiftUI

struct FinishedWorkout: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Stability Training")
                    .foregroundColor(.primary)
                    .font(.system(size: 17))
                
                Text("10:00")
                    .foregroundColor(.basePurple)
                    .font(.system(size: 13))
            }
            .frame(height: 53)
            
            Spacer()
            
            Button(action: {}) {
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
            .padding(.trailing, 16)
        }
        .padding(16)
        .background(RoundedRectangle(cornerRadius: 16)
            .fill(Color.baseTabBackground))
    }
}

struct FinishedWorkout_Previews: PreviewProvider {
    static var previews: some View {
        FinishedWorkout()
    }
}
