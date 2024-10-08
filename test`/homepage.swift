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
            VStack{
                Text("PROFILE")
                NavigationLink("Bingo", destination: Bingo())
                NavigationLink("Profile", destination: Homepage())
                NavigationLink("Goat", destination: Goat())
            }
        }
    }
}

#Preview {
    Homepage()
}
