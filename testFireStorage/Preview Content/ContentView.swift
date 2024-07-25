//
//  ContentView.swift
//  testFireStorage
//
//  Created by João Pedro Borges on 24/07/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
