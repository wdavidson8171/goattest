//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI


struct Goat: View {
    
    
    //let clock = Timer.publish(every: 1, on: .main, in: common).autoconnect()
    
    var body: some View {
        /*NavigationStack{
            HStack{
                NavigationLink("Inventory", destination: Inventory())
                NavigationLink("Dress Up", destination: DressUp())
            }
        }*/
        VStack{
            Image(.hBzero)
            Image(.babyGoat)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
            Text("GOAT")
        }
        
    }
}

#Preview {
    Goat()
}
