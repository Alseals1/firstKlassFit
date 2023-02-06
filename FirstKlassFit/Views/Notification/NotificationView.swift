import SwiftUI

struct NotificationView: View {
    @State var currentTab: String = "Events"
    var tabs = ["New", "Events", "All"]

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
                .padding(.bottom, 32)
                    
                 listofNotification
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.top, 50)
            }
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


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
