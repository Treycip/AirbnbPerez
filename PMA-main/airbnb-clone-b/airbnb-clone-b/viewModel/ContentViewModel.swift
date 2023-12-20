//
//  ContentViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.
//

import Foundation
import MapKit

class ContentViewModel: ObservableObject {
    
    @Published var placesResponse: PlacesResponse = PlacesResponse(places: [])
    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()
    
    

    init() {
        DispatchQueue.main.async {
            Task {
                await self.loadData()
            }
        }
    }
    
    
    func loadData() async {
        
        guard let url = URL(string: "https://airbnb-api-b-zeta.vercel.app/airbnb") else {
            
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            let response = try decoder.decode(PlacesResponse.self, from: data)
            
            DispatchQueue.main.async {
                self.placesResponse = response
                self.processResponse(response.places)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func processResponse(_ places: [Place]) {
        print(places)
        
        for place in places {
            let coordinate = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)
            annotations.append(PlaceCoordinate(name: place.name, coordinate: coordinate, rating: place.rating, image_url: place.image_url, date: place.date, price: place.price))
                               }

    }
}




