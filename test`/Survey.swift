//
//  Survey.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Survey: View {
    var body: some View {
            NavigationStack{
                VStack{
                    Text("SURVEEEYYY")
                    NavigationLink("Done w/ survey", destination: Bingo())
                }
            }
    }
}

#Preview {
    Survey()
}
