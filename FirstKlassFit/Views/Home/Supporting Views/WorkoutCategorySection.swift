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
                ForEach(0..<3) { item in
                    WorkoutCategorySectionItem()
                }
            }
            .padding(.leading, 24)
        }
    }
}

struct WorkoutCategoryTabView_Previews: PreviewProvider {
    static var previews: some View {
            WorkoutCategorySection()
    }
}
