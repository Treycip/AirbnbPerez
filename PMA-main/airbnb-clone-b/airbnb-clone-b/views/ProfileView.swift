//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 10) {
                Image("Profile_image")
                    .frame(width: 170 , height: 170)
                    .clipShape(Circle())
                Text("Hi I'm Treyci")
                    .font(.title)
                Text("Joined in 2023")
                    .foregroundStyle(.gray)
                    .font(.system(size: 18))
                Divider()
                    .padding(.vertical)
                VStack(alignment: .leading, spacing: 20) {
                    Image("shield")
                        .frame(width: 30, height: 30)
                    Text("Identity verification")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Show others you're really you with the identity verification badge")
                    Button {
                        
                    } label: {
                        Text("Get the badge")
                            .padding()
                            .foregroundStyle(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.black)
                            )
                    }
                }
                Divider()
                    .padding(.vertical)
                HStack {
                    Image("translate")
                    Text("Some info is shown in its orginal language.")
                }
                Text("Translate")
                    .underline()
                Text("Matt confirmed")
                    .font(.title)
                    .padding(.top)
                    .fontWeight(.semibold)
                HStack {
                    Image("check")
                    Text("Phone number")
                }
            }.padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
