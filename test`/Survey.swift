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
    @AppStorage("SavedItems") static var SavedItems:[String] = ["Your selected items ","will appear here"]
    @AppStorage("saveSelected") static var saveSelected:[String] = []
    @AppStorage("submitted") static var submitted:Bool = false
    static var blackoutCoins: Int = 0
    @AppStorage("coin") static var coin:Int = 0
    @AppStorage("can") static var can:Int = 0
    @AppStorage("color") static var color:[String] = ["white"]
    @AppStorage("purchased") static var purchased:Int = 0
    //static var selected:String
    @AppStorage("clothesNum") static var clothesNum: Int = 0
    @AppStorage("fixer") static var fixer:Bool = false
    @AppStorage("goatNameText") static var goatNameText:String = " "
    @AppStorage("volume") static var volume = 0.5
    @AppStorage("speakerType") static var speakerType:String = "speaker.wave.3.fill"
    
}
let defaults = UserDefaults.standard
    struct iOSview:View{
        @State var selectedItems:[String]
        //defaults.set(selectedItems, forKey: "savedSelectedItems")
        @State var allItems:[String]
        
        @Environment(\.dismiss) var dismiss
        
        func saveSurvey(){
            GlobalVariables.submitted = true
            closePopOver()
            GlobalVariables.fixer = true
            dismiss()
            if GlobalVariables.submitted == true{
                
            }
            //I think userDefaults could be replaced with APPStorage here to save the data?
            //or something with the globalvariables.saveditems
            //orOR it needs to be done throuh the selectedItems variable
            //orOROR it needs to be done in bingo tab? (ie. saving random array to appstorage)
            let userDefaults = UserDefaults.standard
            userDefaults.set(selectedItems, forKey: "selectedItems")
            GlobalVariables.SavedItems = (userDefaults.array(forKey: "selectedItems") as? [String] ?? [])
            print(GlobalVariables.SavedItems)
            //SAVE RHE SAVED ITEMS SOMEHOW
            GlobalVariables.saveSelected = GlobalVariables.SavedItems
        }
        
        func returnSelectedItems() -> [String] {
            if GlobalVariables.submitted == true{
                GlobalVariables.saveSelected = GlobalVariables.SavedItems
            }
            else{
                GlobalVariables.saveSelected = selectedItems
            }
            return GlobalVariables.saveSelected
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
                                Image(systemName: "\($selectedItems.count).circle")
                                    .foregroundColor(.accentColor)
                                    .font(.title2)
                            }
                            
                        })
                        
                    })
                    Section("My selected activities:", content: {
                        Text(returnSelectedItems().joined(separator: "\n"))
                            .foregroundColor(.darkBrown)
                    }
                    )
                    
                    NavigationLink(destination: Homepage()){
                        Button(action: {saveSurvey()}){
                            HStack{
                                Image(systemName: "star.fill").foregroundStyle(.nicePink)
                                Text("Submit").font(.system(size: 18, weight: .black, design: .serif)) .foregroundStyle(.niceBrown).frame(maxWidth: .infinity, alignment: .center)
                                Image(systemName: "star.fill").foregroundStyle(.nicePink)
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("my items")
            
        }
    }



