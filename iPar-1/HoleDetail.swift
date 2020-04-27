import SwiftUI

struct HoleDetail: View {
    var hole: Hole
    @State var score: String = ""
    var body: some View {
        VStack {
            HStack(alignment: .top){
                Text("Hole")
                Text(String(hole.number))
            }
            MyImage(image: hole.image)
                .padding()
                HStack{
                    Text("Score:")
                    TextField(" 0", text: $score)
                        .frame(width: 25.0)
                }
                .padding()
            HStack {
                VStack {
                    Text("Par:")
                        .font(.subheadline)
                        Text(String(hole.par))
                        }
                VStack {
                    Text("Talon:")
                        .font(.subheadline)
                    Text(String(hole.talon))
                        }
                VStack {
                    Text("Augusta:")
                        .font(.subheadline)
                        Text(String(hole.augusta))
                        }
                VStack {
                    Text("White:")
                        .font(.subheadline)
                        Text(String(hole.white))
                        }
                VStack {
                    Text("Redtail:")
                        .font(.subheadline)
                        Text(String(hole.redtail))
                        }
                VStack {
                    Text("Senior")
                        .font(.subheadline)
                        Text(String(hole.senior))
                        }
            }
            .padding(.top)
        }
        .frame(height: 640.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            HoleDetail(hole: holeData[0])
    }
}
