import SwiftUI

struct ProgressInformation: View {
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 8)
                    .fill(Gradient(colors: [.darkPurple, .lightPurple]))
                
                VStack(spacing: 5){
                    HStack {
                        Text("745")
                            .font(.system(size: 36))
                        Text("Cal")
                            .font(.system(size: 24))
                    }
                    Text("Active Calories")
                        .font(.system(size: 13))
                        .foregroundColor(.baseGreyText)
                }
            }
            .frame(height: 168)
            
            HStack(spacing: 24) {
                ForEach(0..<3) { item in
                    ProgressCircle()
                }
            }
        }
    }
}

struct ProgressInformation_Previews: PreviewProvider {
    static var previews: some View {
        ProgressInformation()
    }
}
