//
//  ContentView.swift
//  uppgift-6
//
//  Created by Hendrik on 2023-11-07.
//
import SwiftUI

struct ContentView: View {
    @State var systole_range = [
        "110.0",
        "115.0",
        "120.0",
        "125.0",
        "130.0",
        "135.0",
        "140.0",
        "145.0",
        "150.0",
        "155.0",
        "160.0",
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Systole")
                
                List(systole_range, id: \.self) {value in   NavigationLink(value,       destination: DiastoleView(systole_value: value))
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
