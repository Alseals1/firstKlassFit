import SwiftUI
enum NotificationTabs: String {
    case new = "New"
    case events = "Events"
    case all = "All"
}
struct NotificationView: View {
    
    var body: some View {
        NotificationTabView(tabs: [.new, .events, .all])
    }
}

struct NotificationTabView: View {
    @State var currentTab: NotificationTabs = .all
    var tabs: [NotificationTabs]

    var body: some View {
        ZStack {
            Color.baseBackground
                .ignoresSafeArea()
            VStack {
                Text("Notifications")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        Button(action: {
                            currentTab = tab
                        }, label: {
                            ZStack {
                                tab == currentTab ? Color.basePurple : .clear
                                
                                Text(tab.rawValue)
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
            .padding(.bottom, 32)
                
                switch currentTab {
                    case .new:
                        listofNotification
                    case .events:
                        listofNotification
                    case .all:
                        listofNotification
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 50)
        }
    }
    
    var listofNotification: some View {
        List {
            ForEach(notificationData) { notification in
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Text(notification.title)
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                        Spacer()
                        Text(notification.time)
                            .font(.system(size: 13))
                            .foregroundColor(.baseGreyText)
                    }
                    Text(notification.message)
                        .font(.system(size: 15))
                        .foregroundColor(.baseGreyText.opacity(0.9))
                }
                .listRowBackground(Color.baseBackground)
            }
            .onDelete { indexSet in
                
            }
        }
        .listStyle(PlainListStyle())
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
