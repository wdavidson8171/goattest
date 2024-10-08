//
//  Tesstt.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Tesstt: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Waverly is trying sumn")
                NavigationLink("Clicky clicky...", destination: ContentView())
            }
        }
    }
}

#Preview {
    Tesstt()
}
