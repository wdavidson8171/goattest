//
//  popup.swift
//  GOATgame
//
//  Created by Seph Jarosh on 11/14/24.
//

import SwiftUI



struct popup: View {
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
            
    }
    
    var body: some View {
        Button(action: {buttonPresed()}){
             Text("Survey")}
        .popover(isPresented: $showPopup, arrowEdge: .bottom) {
          Text("Yay!!!!!!")
            .frame(width: 100, height: 100)
        }    }
}

#Preview {
    popup()
}
