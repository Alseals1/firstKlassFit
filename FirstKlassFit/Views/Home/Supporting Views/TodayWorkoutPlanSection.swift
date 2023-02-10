import SwiftUI

struct TodayWorkoutPlanSection: View {
    var body: some View {
        VStack{
            HStack{
                Text("Today Workout Plan")
                    .font(.system(size: 17))
                    .foregroundColor(.primary)
                Spacer()
                Text("Mon 26 Apr")
                    .font(.system(size: 13))
                    .foregroundColor(.basePurple)
            }
            ZStack(alignment: .bottomLeading) {
                Image("Image1")
                    .resizable()
                    .frame(height: 160)
                VStack(spacing: 5) {
                    Text("Day 01 - Warm Up")
                        .foregroundColor(.white)
                    HStack(spacing: 5) {
                        Rectangle()
                            .fill(Color.basePurple)
                            .frame(width: 3, height: 15)
                        Text("7:00 - 8:00 AM")
                            .foregroundColor(.baseGreyText)
                    }
                }
                .padding([.bottom,.leading], 16)
            }
        }
        .padding(.bottom, 30)
        .padding(.horizontal, 20)
    }
}

struct TodayWorkoutPlanSection_Previews: PreviewProvider {
    static var previews: some View {
        TodayWorkoutPlanSection()
    }
}
