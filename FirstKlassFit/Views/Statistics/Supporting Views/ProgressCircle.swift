import SwiftUI

struct ProgressCircle: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5)
                .fill(Gradient(colors: [.darkPurple, .lightPurple]))
            
            VStack(spacing: 10){
                Text("Steps")
                    .font(.system(size: 13))
                    .foregroundColor(.baseGreyText)
                
                HStack(spacing: 3) {
                    Text("6540")
                        .font(.system(size: 22))
                    Text("min")
                        .font(.system(size: 13))
                }
            }
        }
        .frame(height: 110)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
