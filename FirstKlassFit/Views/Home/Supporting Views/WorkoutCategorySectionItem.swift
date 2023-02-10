import SwiftUI

struct WorkoutCategorySectionItem: View {
    var body: some View {
        HStack {
            ZStack(alignment: .bottomLeading) {
                Image("Image1")
                    
                VStack(alignment: .leading, spacing: 5) {
                    Text("Learn the Basic of Training")
                        .foregroundColor(.white)
                    HStack(spacing: 5) {
                        Rectangle()
                            .fill(Color.basePurple)
                            .frame(width: 3, height: 15)
                        Text("06 Workouts  for Beginner")
                            .foregroundColor(.baseGreyText)
                    }
                }
                .padding([.bottom,.leading], 16)
            }
        }
    }
}

struct WorkoutCategorySectionItem_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCategorySectionItem()
    }
}
