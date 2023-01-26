import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
    // MARK: - Base VStack
                VStack {
                    header
                    todayWorkoutPlan
                    WorkoutCategoryTabView(tabs: [.beginner, .intermediate, .advance])
                    NewWorkout()
                }
            }
        .padding(.horizontal, 20)
        }
    }
    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hello Julietta,")
                .foregroundColor(.baseWhiteText)
                .font(.system(size: 36))
            
            Text("Good Morning")
                .font(.system(size: 15))
                .foregroundColor(.baseGreyText)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom, 31)
    }
    
    private var todayWorkoutPlan: some View {
        VStack{
            HStack{
                Text("Today Workout Plan")
                    .foregroundColor(.baseWhiteText)
                    .font(.system(size: 17))
                Spacer()
                Text("Mon 26 Apr")
                    .font(.system(size: 13))
                    .foregroundColor(.basePurple)
            }
            WorkoutCardLarge(workout: "Day 01 - Warm Up", workoutTime: "7:00 - 8:00 AM", image: "Image1")
        }
        .padding(.bottom, 30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
        
    }
}
