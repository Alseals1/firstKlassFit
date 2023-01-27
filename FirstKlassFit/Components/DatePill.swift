import SwiftUI

struct DatePill: View {
    let day: String
    let date: String
    let color: Color
    var body: some View {
        VStack {
            Text(day)
            Text(date)
        }
        .padding()
        .background(color)
        .clipShape(Capsule())
        
    }
}

struct DatePill_Previews: PreviewProvider {
    static var previews: some View {
        DatePill(day: "W", date: "18", color: .basePurple)
    }
}
