//
//  TabIcon.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct TabIcon: View {
    var image: String
    var text: String
    var body: some View {
        VStack{
            SwiftUI.Image(image)
                .renderingMode(.template)
            SwiftUI.Text(text)
        }
    }
}

struct TabIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabIcon(image: "heart", text: "Wishlist")
    }
}
