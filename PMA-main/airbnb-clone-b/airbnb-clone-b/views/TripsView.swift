//
//  TripView.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @StateObject var contentViewModel = ContentViewModel()

    @State private var selectedLocation: Location?

    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    @State private var name: String = ""
        @State private var rating: Double = 0.0
        @State private var image_url: String = ""
        @State private var date: String = ""
        @State private var price: Double = 0.0
        @State private var latitude: Double = 0.0
        @State private var longitude: Double = 0.0
    

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: contentViewModel.annotations) {
                
                placeCoordinate in
                MapAnnotation(coordinate: placeCoordinate.coordinate) {
                    Button(action: {
                        self.name = placeCoordinate.name
                        self.rating = placeCoordinate.rating
                        self.image_url = placeCoordinate.image_url
                        self.date = placeCoordinate.date
                        self.price = placeCoordinate.price
                        
                        // Actualiza tus atributos @State aquí con los datos de tripAnnotation
                        // Por ejemplo:
                        // self.name = tripAnnotation.name
                    }) {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .imageScale(.large)
                    }
                }
            }
            
            VStack {
                HStack(alignment:.bottom){
                   
                        Button {
                            region.span.latitudeDelta =
                            min(region.span.latitudeDelta * 2 , 180)
                            region.span.longitudeDelta =
                            min(region.span.longitudeDelta * 2 , 180)
                            
                        } label: {
                            Image(systemName: "minus.magnifyingglass")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.blue)
                                .padding()
                            
                        }
                        
                        // Botón para acercar
                        Button {
                            
                            region.span.latitudeDelta =
                            (region.span.latitudeDelta * 0.5)
                            region.span.longitudeDelta =
                            (region.span.longitudeDelta * 0.5)
                    
                        } label: {
                            Image(systemName: "plus.magnifyingglass")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.blue)
                                .padding()
                        }
                    }
                
                
                        
                Spacer()
                HStack {
                    ZStack(alignment:.topLeading){
                        AsyncImage(url: URL(string: image_url)) { image in
                            image.resizable()
                        }
                        placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 120)
                        
                        Image(systemName:"xmark.circle.fill")
                            .background()
                            .cornerRadius(90)
                            .padding(6)
                    }
                    
                    VStack(alignment: .leading, spacing: 50) {
                        HStack(alignment:.bottom){
                            Text(name)
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                        }
                        
                        HStack(alignment:.bottom){
                            VStack{
                                Text(" \(date)")
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .padding(.trailing,2)
                                Text("Precio: s/ \(String(format: "%.2f", price))")
                                    .font(.caption)
                                
                            }
                            Spacer()
                            HStack{
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                Text(String(format: "%.2f", rating))
                                    .font(.caption)
                            }
                                
                        }
                        
                    }
                    
                    .padding(.vertical)
                    Spacer()
                }
                .frame(height: 120)
                .background(.white)
            }
            .padding()
        }
    }
}
struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
