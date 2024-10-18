//
//  Bingo.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Bingo: View {
    var body: some View {
        VStack{
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
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
    Bingo()
}
