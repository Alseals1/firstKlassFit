import SwiftUI

struct StatisticsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                DatePickerSection()
            }
            
            VStack(spacing: 30) {
                ProgressInformation()
                
                VStack(alignment: .leading){
                    Text("Finished Workout")
                        .font(.system(size: 17))
                    
                    ForEach(0..<5) { item in
                        FinishedWorkout()
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
