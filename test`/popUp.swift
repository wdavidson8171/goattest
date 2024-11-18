//
//  popup.swift
//  GOATgame
//
//  Created by Seph Jarosh on 11/14/24.
//

import SwiftUI




struct popup: View {
    @State var selectedItems = [String]()
    @State var allItems:[String] = [
        "Family activities",
        "Group Activities",
        "Household Chores",
        "Indoor Activities",
        "Creative Activities",
        "Outdoor Activities",
        "Exercise",
        "Going out (cheap)",
        "Going Out (fancy)",
        "Cooking/Baking",
        "Self Care",
        "Spring",
        "Summer",
        "Fall",
        "Winter"    ]
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
            
    }
    
    func test(){
        print("aghhhhh")
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
