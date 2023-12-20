//
//  InformationSection.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 3/11/23.
//

import SwiftUI

struct HomeCardItem: View {

    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Image("item1")
                .frame(width: 362, height: 323)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            HStack{
                Text("Harligen, Netherlands")
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .font(.system(size: 11))
                Text("4.76")
            }
            Text("Professional Host")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("18-23 Dec")
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text("$1,065 total")
                .fontWeight(.semibold)
        }
    }
}

struct HomeCardItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardItem()
    }
}
