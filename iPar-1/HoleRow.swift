import SwiftUI

struct HoleRow: View {
    var hole: Hole
    
    var body: some View {
        HStack {
            VStack {
            Text("Hole:")
            Text(String(hole.number))
            }
            VStack {
            Text("Par:")
            Text(String(hole.par))
            }
        }
    }
}

struct HoleRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HoleRow(hole: holeData[0])
            HoleRow(hole: holeData[1])
        }
    }
}
