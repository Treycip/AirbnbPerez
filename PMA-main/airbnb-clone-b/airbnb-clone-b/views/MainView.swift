//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = appearance
    }
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    TabIcon(image: "magnifing", text: "Explore")
                }
            WishListView()
                .tabItem{
                    TabIcon(image: "heart", text: "Wishlist")
                }
            TripsView()
                .tabItem{
                    TabIcon(image: "logo-icon", text: "Trips")
                }
            InboxView()
                .tabItem{
                    TabIcon(image: "inbox", text: "Inbox")
                }
            ProfileView()
                .tabItem{
                    TabIcon(image: "profile", text: "Profile")
                }
        }
        .accentColor(Color("AirbnbPrimary"))
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor.white
            
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
