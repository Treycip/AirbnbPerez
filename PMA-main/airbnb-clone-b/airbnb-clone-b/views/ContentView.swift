//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 50) {
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Tiny Home")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
                .padding([.horizontal])
            }
            
            
            Divider()
            
            
            List(contentViewModel.placesResponse.places, id: \.name) { place in
                    VStack(alignment: .leading, spacing: 10) {
                        AsyncImage(url: URL(string: place.image_url)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 378, height: 323)
                        .cornerRadius(16)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            HStack{
                                Text("\(place.name)")
                                    .fontWeight(.bold)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .font(.system(size: 11))
                                Text(" \(String(format: "%.2f", place.rating))")
                                
                            }
                            HStack{
                                Image(systemName: "location")
                                Text("\(place.location.city)")
                            }
                            HStack{
                                Image(systemName: "flag.fill")
                                Text("\(place.location.country)")
                            }
                            HStack{
                                Image(systemName: "calendar")
                                Text(" \(place.date)")
                            }
                            
                            Text("Precio: S/ \(String(format: "%.2f", place.price))")
                                .fontWeight(.bold)
                        }
                        .padding(.horizontal)
                    }
                }
                .listStyle(.inset)
                .listRowSeparator(.hidden)
                .padding([.trailing, .leading])
                
                
                Spacer()
            }
//            .task {
//                await contentViewModel.loadData()
//            }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
