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
            VStack{
                Text("GOAT")
                NavigationLink("Bingo", destination: Bingo())
                NavigationLink("Profile", destination: Homepage())
                NavigationLink("Goat", destination: Goat())
            }
        }
    }
}

#Preview {
    Goat()
}
