//
//  Survey.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

func survey(){
    struct Survey: View {
        
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
        
        var body: some View{
            iOSview(selectedItems: selectedItems, allItems: allItems)
        }
    }
    
    #Preview {
        Survey()
    }
    
    struct MultiSelectPickerView: View {
        @State var allItems: [String]
        
        @Binding var selectedItems: [String]
        
        var body: some View{
            Form{
                List{
                    ForEach(allItems, id: \.self){ item in
                        Button(action: {
                            withAnimation {
                                if self.selectedItems.contains(item){
                                    self.selectedItems.removeAll(where: {$0 == item})
                                } else {
                                    self.selectedItems.append(item)
                                }
                            }
                        }){
                            HStack{
                                Image(systemName: "checkmark")
                                    . opacity(self.selectedItems.contains(item) ? 1.0 : 0.0)
                                Text(item)
                            }
                        }
                        .foregroundColor(.primary)
                    }
                }
            }
        }
    }
    struct iOSview:View{
        @State var selectedItems:[String]
        @State var allItems:[String]
        
        var body: some View{
            
            NavigationView{
                Form{
                    Section("What activities are you interested in?", content: {
                        NavigationLink(destination: {
                            MultiSelectPickerView(allItems: allItems, selectedItems: $selectedItems)
                                .navigationTitle("Choose your activities")
                        }, label: {
                            HStack{
                                Text("Select Activities:")
                                    .foregroundColor(.darkGreen)
                                
                                Spacer()
                                Image(systemName: "\($selectedItems.count).cirlce")
                                    .foregroundColor(.red)
                                    .font(.title2)
                            }
                            
                        })
                    })
                    Section("My selected activities:", content: {
                        Text(selectedItems.joined(separator: "\n"))
                            .foregroundColor(.darkBrown)
                    }
                    )}
            }
            .navigationTitle("my items")
        }
    }
    
}
