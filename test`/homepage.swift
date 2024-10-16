//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
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
    Homepage()
}
