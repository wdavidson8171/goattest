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
            TabView {
                Survey().tabItem{
                    Label("Survey", systemImage: "list.bullet.clipboard")
                }
            }
        }    }
}

#Preview {
    popup()
}
