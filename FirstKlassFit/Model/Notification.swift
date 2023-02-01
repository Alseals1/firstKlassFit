import Foundation

struct Notification: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let time: String
}

let notificationData: [Notification] = [
Notification(title: "Congratulation", message: "35% your daily challenge completed", time: "9:45 AM"),
Notification(title: "Attention", message: "Your subscription is going to expir very soon. Subscribe now.", time: "2:45 PM"),
Notification(title: "Daily Activity", message: "35% your daily challenge completed", time: "7:05AM "),
Notification(title: "You got this!!!!", message: "Don't let me down today", time: "7:30AM"),
Notification(title: "Welcome", message: "Welcome to the morning sprint", time: "5:45 AM")
]
