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
            HStack{
                NavigationLink("Inventory", destination: Inventory())
                NavigationLink("Dress Up", destination: DressUp())
            }
        }
        NavigationStack{
            TabView{
                NavigationLink("Bingo", destination: Bingo())
                    .tabItem{
                    Image("bingoTab")
                }
                NavigationLink("Homepage", destination: Homepage())
                    .tabItem{
                    Image("profileTab")
                }
                NavigationLink("Goat", destination: Goat()).tabItem{
                    Image("goatTab")
                }
            }
        }
    }
}

#Preview {
    Goat()
}
