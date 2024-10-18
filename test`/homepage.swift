//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        
        
        VStack{
            Button(action: {
                print("YEST")
            }, label: {
                Image("bingoTab")
                    .resizable().aspectRatio(contentMode: .fit).frame(height: 75)
            })
        }
        /*NavigationStack{
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
        }*/
    }
}

#Preview {
    Homepage()
}
