//
//  Image.swift
//  iPar-1
//
//  Created by Jocelynn Hartwig on 4/25/20.
//  Copyright © 2020 Jocelynn Hartwig. All rights reserved.
//

import SwiftUI

struct MyImage: View {
    var image: Image

    var body: some View {
        image
    }
}

struct MyImage_Previews: PreviewProvider {
    static var previews: some View {
        MyImage(image: Image("hole_one"))
    }
}
