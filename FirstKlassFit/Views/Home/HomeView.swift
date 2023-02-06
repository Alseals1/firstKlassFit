import SwiftUI

struct HomeView: View {
    var body: some View {
            NavigationStack {
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        TodayWorkoutPlanSection()
                        WorkoutCategorySection(tabs: ["Beginner", "Intermediate", "Advanced"])
                        NewWorkout()
                           
                    }
                }
                .navigationBarTitleDisplayMode(.large)
                .navigationTitle(Text("Hello Julietta,"))
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
            
        
    }
}
