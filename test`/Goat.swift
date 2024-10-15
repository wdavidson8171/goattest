//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Goat: View {
    var body: some View {
        //NavigationStack{
            TabView{
                NavigationLink("Bingo", destination: Bingo())
                    .tabItem{
                    Image("bingoTab")
                }
                NavigationLink("Profile", destination: Homepage())
                    .tabItem{
                    Image("profileTab")
                }
                NavigationLink("Goat", destination: Goat()).tabItem{
                    Image("goatTab")
                }
            }
        //}
    }
}

#Preview {
    Goat()
}
