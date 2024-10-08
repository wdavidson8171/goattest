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
                NavigationLink("Bingo", destination: Bingo()).tabItem{
                    Text("Bingo")
                    Image("bingoTab").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                }
                NavigationLink("Profile", destination: Homepage()).tabItem{ Text("Profile")
                    Image("profileTab").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                }
                NavigationLink("Goat", destination: Goat()).tabItem{
                    Text("Goat")
                    Image("goatTab").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                        
                }
            }
        }
    }
}

#Preview {
    Homepage()
}
