import Foundation

struct Workout: Identifiable, Decodable {
    var id: String
    var title: String
    var subtitle: String
    var category: String
    var image: String
}
