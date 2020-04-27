import SwiftUI
import CoreLocation 

struct Hole: Hashable, Codable, Identifiable {
    var number: Int
    var id: Int
    var talon: Int
    var augusta: Int
    var white: Int
    var redtail: Int
    var senior: Int
    var par: Int
    fileprivate var imageName: String
    
}

extension Hole {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
