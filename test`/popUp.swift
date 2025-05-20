//
//  popup.swift
//  GOATgame
//
//  Created by Seph Jarosh on 11/14/24.
//

import SwiftUI




struct popup: View {
    @State var countUpTimer = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
            
    }

    func hidePopup(){
        if GlobalVariables.submitted == true{
            showPopup = false
            print("test")
        }
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
           
                
        }

    }
}
    
#Preview {
    popup()
    
}
