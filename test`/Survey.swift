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
        
        //declares array of categories you can choose
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
    //allows you to select mutiple items in a picker
    struct MultiSelectPickerView: View {
        
        @State var allItems: [String]
        
        //maybe binding storage of selected items with clicked items from allitems list???
        @Binding var selectedItems: [String]
        
        
        
        var body: some View{
            //container to group controls
            Form{
                List{
                    //looping through allItems array and creates buttons for each
                    ForEach(allItems, id: \.self){ item in
                        Button(action: {
                            //I think this is animating the checkmarks?
                            withAnimation {
                                //checks if item you click already exists in selected items: if it does, then it unselects, else it appends the item to selectedItems array
                                if self.selectedItems.contains(item){
                                    self.selectedItems.removeAll(where: {$0 == item})
                                } else {
                                    self.selectedItems.append(item)
                                }
                            }
                        }){
                            //adds checkmark to selected items
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
    @AppStorage("savedItems") static var SavedItems:[String] = ["Your selected items ","will appear here"]
    //permanently saves selections in popup
    static var submitted:Bool = false
    @AppStorage("coin") static var coin:Int = 0
    @AppStorage("can") static var can:Int = 0
    @AppStorage("color")static var color:[String] = ["white"]
    static var purchased:Int = 0
    //static var selected:String
}
let defaults = UserDefaults.standard
    struct iOSview:View{
        @State var selectedItems:[String]
        //defaults.set(selectedItems, forKey: "savedSelectedItems")
        @State var allItems:[String]
        
        
        func saveSurvey(){
            GlobalVariables.submitted = true
            //I think userDefaults could be replaced with APPStorage here to save the data?
            //or something with the globalvariables.saveditems
            //orOR it needs to be done throuh the selectedItems variable
            //orOROR it needs to be done in bingo tab? (ie. saving random array to appstorage)
            let userDefaults = UserDefaults.standard
            userDefaults.set(selectedItems, forKey: "selectedItems")
            GlobalVariables.SavedItems = (userDefaults.array(forKey: "selectedItems") as? [String] ?? [])
            print(GlobalVariables.SavedItems)
            //SAVE RHE SAVED ITEMS SOMEHOW
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
