import SwiftUI

struct ProfileHeaderSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(spacing: 65) {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .fill(Gradient(colors: [.baseBackground.opacity(0.7),.darkPurple, .lightPurple]))
                        .frame(width: 104, height: 104)
                    Image("profilePicture")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                
                HStack(spacing: 23) {
                    Rectangle()
                        .frame(width: 1, height: 103)
                    
                    VStack(alignment: .leading) {
                        Text("Joined")
                            .foregroundColor(Color.baseTabBackground)
                            .font(.system(size: 11))
                        Text("2 mon ago")
                            .foregroundColor(.primary)
                            .font(.system(size: 15))
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: -10) {
                Text("Julietta")
                    .foregroundColor(.primary)
                    .font(.system(size: 36))
                Text("Moonwalk")
                    .foregroundColor(Color.baseTabBackground)
                    .font(.system(size: 36))
            }
        }
        .padding(.vertical, 36)
    }
}

struct ProfileHeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderSection()
    }
}
