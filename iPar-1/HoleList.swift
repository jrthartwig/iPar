/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct HoleList: View {
    var body: some View {
        NavigationView {
            List(holeData) { hole in
                NavigationLink(destination: HoleDetail(hole: hole)) {
                    HoleRow(hole: hole)
                }
            }
            .navigationBarTitle(Text("Noble Hawk"))
        }
    }
}

struct HoleList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            HoleList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

