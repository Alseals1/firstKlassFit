import SwiftUI

struct WorkoutCategorySection: View {
    @State private var selectedTab: String = "Beginner"
    var tabs = ["Beginner", "Intermediate", "Advanced"]
    
    var body: some View {
        VStack(spacing: 14) {
            VStack {
                HStack {
                    Text("Workout Categories")
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
                                
                                Text(tab)
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                            .clipShape(Capsule())
                        })
                        .frame(height: 28)
                    }
                }
                .background(Color.baseTabBackground)
                .clipShape(Capsule())
                .frame(height: 28)
            }
            .padding(.horizontal, 24)
            
           workout
        }
        .padding(.bottom, 30)
    }
    
    var workout: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(1...5, id: \.self) { image in
                    HStack {
                        ZStack(alignment: .bottomLeading) {
                            Image("Image2")
                                .resizable()
                                .frame(height: 160)
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
            .padding(.leading, 24)
        }
    }
}

struct WorkoutCategoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            WorkoutCategorySection(tabs: ["Beginner", "Intermediate", "Advanced"])
        }
    }
}
