import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ProfileHeaderSection()
            ProfileSettingListSection()
        }
        .padding(.horizontal, 28)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            UserProfileView()
        }
    }
}
