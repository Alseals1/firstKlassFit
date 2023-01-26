import SwiftUI
enum CustomsTab: String {
    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advance = "Advance"
}

struct WorkoutCategoryTabView: View {
   @State private var selectedTab: CustomsTab = .beginner
    var tabs: [CustomsTab]
    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Text("Workout Categories")
                    .foregroundColor(.baseWhiteText)
                    .font(.system(size: 17))
                Spacer()
                Text("See All")
                    .foregroundColor(.basePurple)
                    .font(.system(size: 13))
            }
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        Button(action: {
                            selectedTab = tab
                        }, label: {
                            ZStack {
                                tab == selectedTab ? Color.basePurple : .clear
                                
                                Text(tab.rawValue)
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                            .clipShape(Capsule())
                        })
                        .frame(height: 28)
                    }
                }
                .clipShape(Capsule())
                .frame(height: 28)
            
            switch selectedTab {
                case .beginner:
                    BeginningWorkout()
                case .intermediate:
                    Text("Intermediate Workouts Card")
                case .advance:
                    Text("Advance Workouts Card")
            }
        }
        .padding(.bottom, 30)
    }
}

struct BeginningWorkout: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(1...5, id: \.self) { image in
                    WorkoutCardLarge(workout: "Learn the Basic of 1", workoutTime: "06 Workouts  for Beginner ", image: "Image2")
                }
            }
        }
    }
}

struct WorkoutCategoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            WorkoutCategoryTabView(tabs: [.beginner, .intermediate, .advance])
        }
    }
}
