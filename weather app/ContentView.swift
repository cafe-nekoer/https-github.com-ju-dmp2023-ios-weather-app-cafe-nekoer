//

//  ContentView.swift

//  WeatherApp_iOS

//

//  Created by Jinglin Li on 27/1/25.

//



import SwiftUI

struct ContentView: View {
    @StateObject private var model = WeatherDataViewModel()
    @State private var locationService = LocationManager()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            await model.loadWeatherData()
        }
        
        /// view the location
        ScrollView {
            Image(systemName: "globle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            if let location = locationService.location {
                Text("Current Location: Latitude \(location.coordinate.latitude), Longitude  \(location.coordinate.longitude)")
                Text("City: \(locationService.address?.locality ?? "unkown")")
            } else {
                Text ("No location")
            }
        }
        .padding()
        .onAppear{
            locationService.requestLocation()
        }
        .refreshable {
            locationService.requestLocation()
        }
        ///
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
