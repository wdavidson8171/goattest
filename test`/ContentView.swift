//
//  ContentView.swift
//  test`
//
//  Created by Waverly Davidson on 9/24/24.
//

import SwiftUI
import SwiftData
import UIKit


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var textInput = ""
    
    var body: some View {
        
        TabView{
            Bingo().tabItem{
                Label("Bingo", systemImage: "square.grid.3x3")
            }
            Homepage().tabItem{
                Label("Profile", systemImage: "person.circle")
            }
            Goat().tabItem{
                Label("Goat", systemImage:"lasso.badge.sparkles")
            }
        }
        
        
        
    
    }
        
        
        
}


