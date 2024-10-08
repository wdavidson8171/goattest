//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Goat: View {
    var body: some View {
        NavigationStack{
            TabView{
                NavigationLink("Bingo", destination: Bingo()).tabItem{
                    Text("Bingo")
                }
                NavigationLink("Profile", destination: Homepage()).tabItem{ Text("Profile")
                }
                NavigationLink("Goat", destination: Goat()).tabItem{
                    Text("Goat")
                }
            }
        }
    }
}

#Preview {
    Goat()
}
