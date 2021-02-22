//
//  ContentView.swift
//  firstapp
//
//  Created by MAC on 16/2/2021.
//

import SwiftUI
import MapKit


struct ContentView1: View {
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var score = 85
    
    var name : String = " ramzi "
    var agest  = 22
    
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region).frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
                
            
            VStack(alignment: .leading) {
                            Text("Turtle Rock\(agest)" )
                                .font(.title)
                
                      
                            HStack {
                                Text("Joshua Tree National Park")
                                    .font(.subheadline)
                                Spacer()
                                Text("California")
                                    .font(.subheadline)
                            }
                      Divider()
                              Text("About Turtle Rock")
                                    .font(.title2)
                                Text("Descriptive text goes here.")
                Button("Button title") {
                    
                }
                
               
                
                     
                        }
                        .padding()
                       Spacer()
            
        }
       
        
           /* Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            . shadow (radius: 7)
        VStack(alignment: .leading){
            Text(name ).font(.title)
                .foregroundColor(.green)
            HStack{
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer()
                Text("California").font(.subheadline)
               
            }
        }.padding()
       
        */
        
      
 

}
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView1()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
                
            ContentView1()
                .environment(\.sizeCategory, .large)
        }
    }
}
