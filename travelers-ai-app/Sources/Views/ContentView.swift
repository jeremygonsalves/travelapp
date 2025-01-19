import SwiftUI

struct ContentView: View {
    @State private var selectedTravelType: String = "Solo"
    @State private var selectedAccommodation: String = "Hotel"
    @State private var selectedActivity: String = "Sightseeing"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Curated Travel Itineraries")
                    .font(.largeTitle)
                    .padding()
                
                Picker("Travel Type", selection: $selectedTravelType) {
                    Text("Solo").tag("Solo")
                    Text("Group").tag("Group")
                    Text("Couple").tag("Couple")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker("Accommodation Type", selection: $selectedAccommodation) {
                    Text("Hostel").tag("Hostel")
                    Text("Hotel").tag("Hotel")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker("Activity Type", selection: $selectedActivity) {
                    Text("Sightseeing").tag("Sightseeing")
                    Text("Beach").tag("Beach")
                    Text("City").tag("City")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                // Placeholder for displaying trips based on selected filters
                Text("Display trips based on selected filters here.")
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Travelers AI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}