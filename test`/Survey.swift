//
//  Survey.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Survey: View {
    @State private var didTap:Bool = false
    @State public var family:Bool = false
    var body: some View {
    
            NavigationStack{
                VStack{
                    Text("SURVEEEYYY")
                    NavigationLink("Done w/ survey", destination: Bingo())
                    
                    Button(action: {
                        self.didTap.toggle()
                        self.family.toggle()
                    }) {
                        if(self.didTap == true){
                            Image(systemName: "circle.fill")
                        }
                        else{
                            Image(systemName: "circle")
                        }
                        Text("Family Activites")
                          }
                    
                }
            }
    }
}

#Preview {
    Survey()
}
