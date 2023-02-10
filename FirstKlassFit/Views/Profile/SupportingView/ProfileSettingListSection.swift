import SwiftUI

struct ProfileSettingListSection: View {
    var body: some View {
        List {
            ForEach(0..<4) { text in
                Button(action: {
                }, label: {
                    HStack {
                        Text("Setting")
                            .padding(.vertical)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                })
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct ProfileSettingListSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingListSection()
    }
}
