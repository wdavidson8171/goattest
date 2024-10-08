//
//  ContentView.swift
//  test`
//
//  Created by Waverly Davidson on 9/24/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var textInput = ""
    
    
    var body: some View {
        VStack{
            Text("i have MASSIVE beef with github!@#$%^&*()")
            Image("goat").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/).cornerRadius(300)
            
            TextField("Name", text: $textInput)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        VStack{
            Text("i have MASSIVE beef with github!@#$%^&*()")
            Image("goat").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/).cornerRadius(300)
        }
        
        
    }
}
