import SwiftUI

struct WorkoutCardSmall: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("Image3")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Warm Up")
                    .foregroundColor(.white)
                HStack(spacing: 5) {
                    Rectangle()
                        .fill(Color.basePurple)
                        .frame(width: 3, height: 15)
                    Text("01 Workout")
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
        WorkoutCardSmall()
    }
}
