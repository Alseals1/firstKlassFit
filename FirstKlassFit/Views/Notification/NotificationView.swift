import SwiftUI

struct NotificationView: View {
    @State var currentTab: String = "Events"
    var tabs = ["New", "Events", "All"]
    
    var body: some View {
        VStack {
            Text("Notifications")
                .font(.system(size: 20))
                .foregroundColor(.primary)
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Button(action: {
                        currentTab = tab
                    }) {
                        ZStack {
                            tab == currentTab ? Color.basePurple : .clear
                            
                            Text(tab)
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                        }
                        .clipShape(Capsule())
                    }
                    .frame(height: 28)
                }
            }
            .background(Color.baseTabBackground)
            .clipShape(Capsule())
            .frame(height: 28)
            .padding(.bottom, 32)
            
            List {
                ForEach(0..<6) { notification in
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("Congratulation")
                                .font(.system(size: 15))
                                .foregroundColor(.primary)
                            
                            Spacer()
                            
                            Text("9:45 AM")
                                .font(.system(size: 13))
                                .foregroundColor(.primary.opacity(0.7))
                        }
                        Text("35% your daily challenge completed")
                            .font(.system(size: 15))
                            .foregroundColor(.primary.opacity(0.9))
                    }
                }
                .onDelete { indexSet in }
            }
            .listStyle(PlainListStyle())
            
            Spacer()
        }
        .padding(.horizontal, 24)
        .padding(.top, 50)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
