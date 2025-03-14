//
//  Survey.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI



    struct Survey: View {
        
        //let names = [1, 2, 3]

        
        @State var selectedItems = [String]()
        
        
        @State var allItems:[String] = [
            "Family Activities",
            "Household Chores",
            "Indoor Activities",
            "Creative Activities",
            "Exercise",
            "Going Out (cheap)",
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

struct GlobalVariables{
    static var SavedItems:[String] = ["Your selected items ","will appear here"]
    static var submitted:Bool = false
    static var coin:Int = 0
    static var can:Int = 0
    static var color:[String] = ["white"]
    static var purchased:Int = 0
    //static var selected:String
}
    struct iOSview:View{
        @State var selectedItems:[String]
        @State var allItems:[String]
        
        
        func saveSurvey(){
            GlobalVariables.submitted = true
            let userDefaults = UserDefaults.standard
            userDefaults.set(selectedItems, forKey: "selectedItems")
            GlobalVariables.SavedItems = (userDefaults.array(forKey: "selectedItems") as? [String] ?? [])
            print(GlobalVariables.SavedItems)
        }
        
        
        var body: some View{
            
            NavigationView{
                Form{
                    Section("What activities are you interested in? \nPlease select at least 5 for a more satisfying experience", content: {
                        NavigationLink(destination: {
                            MultiSelectPickerView(allItems: allItems, selectedItems: $selectedItems)
                                .navigationTitle("Choose your activities")
                        }, label: {
                            HStack{
                                Text("Select Activities:")
                                    .foregroundColor(.accentColor)
                                
                                Spacer()
                                Image(systemName: "\($selectedItems.count).cirlce")
                                    .foregroundColor(.red)
                                    .font(.title2)
                            }
                            
                        })
                        
                    })
                    Section("My selected activities:", content: {
                        Text(GlobalVariables.SavedItems.joined(separator: "\n"))
                            .foregroundColor(.darkBrown)
                    }
                    )
                    Button(action: {saveSurvey()}){
                        Text("Submit")                 }
                }
            }
            .navigationTitle("my items")
            
        }

    }
