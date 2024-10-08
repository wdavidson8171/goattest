//
//  Bingo.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Bingo: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("BINGO")
                NavigationLink("Bingo", destination: Bingo())
                NavigationLink("Profile", destination: Homepage())
                NavigationLink("Goat", destination: Goat())
            }
        }
    }
}

#Preview {
    Bingo()
}
