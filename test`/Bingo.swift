//
//  Bingo.swift
//  test`
//  test by mandell --
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI
import UIKit

class ViewController: UIViewController{
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .grayBlue
        button.setTitle("Survey", for: .normal)
        button.setTitleColor(.darkBrown, for: .normal)
        button.addTarget(self, action: #selector(handleShowPopUp), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        view.addSubview(button)
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
    }
    
    @objc func handleShowPopUp(){
        print("Show pop up window")
        Survey()
        //maybe where survey code goes?
    }
    
    
}
var buttonPressed = false

var testSquares = ["a","b","c","d","e","f"]

let choreArray = [ "clean_bathroom", "laundry","trash", "sweep", "dishes", "clean_bedroom","bed"]
let familyArray = ["boardgame", "walk","meal","picnic"]
let indoorArray = ["movie","read","puzzle","videoGame"]
let creativeArray = ["fiberCraft","bracelet","collage","paint","write","draw"]
let exerciseArray = ["hike","run","swim","bike","gym","dance","yoga","justDance"]
let cheapArray = ["thriftig","coffee","usedBooks","boba","foodCart","arcade","iceCream"]
let spennyArray = ["snackMovie","mall","bookstore","hibachi","tea","brunch","seeSports"]
let cookingArray = ["familyRecipe", "cookies","cake","newRecipe","lunch","breakfast","dinner","barbecue"]
let selfCareArray = ["nap","water","bath","mask","haircut","maniPedi","brushHair","bedEarly","sleepIn","makeSmoothie","phoneBreak","listenToMusic","present","sweettTreat"]
let fallArray = ["pumpkinPatch","pumpkinSpice","hauntedHouse","cornMaze","carvePumpkin"]
let winterArray = ["goToMountain","hotChocolate","pajamaParty","snowman"]
let springArray = ["sitInMeadow","springCleaning","dyeEgg","bouquet"]
let summerArray = ["waterBalloonFight","swimmingHole","pool","berryPicking","amusementPark","beach"]

//var selectedActivities = [String]

struct Bingo: View {
    func Survey(){}
    
    //survey()
    
    
    //suvey
    func buttonPresed(){
        print("kill meeee")
        buttonPressed = true
            
    }
    
    //.disabled(true)

    var num = testSquares.randomElement()!
    var picture = choreArray[0]
    
    let button1 = choreArray[Int.random(in:0...choreArray.count-1)]
    let button2 = fallArray[Int.random(in:0...fallArray.count-1)]
    
    var body: some View {
        
        VStack{
            HStack{
                Button(action: {buttonPresed()}){
                    Image(button1)                 }.padding(5)
            
                Button(action: {buttonPresed()}){
                    Image(button2)                 }.padding(5)
                Button(action: {buttonPresed()}){
                    Image(button2)                 }.padding(5)
                Button(action: {buttonPresed()}){
                    Image(button1)                 }.padding(5)
            }
            HStack{
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
            }
            HStack{
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
            }
            HStack{
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
            }
            HStack{
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
            }
            HStack{
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
            }
        }.padding()
            .onAppear(){print(num)}
        
    }
    
}

func Survey(){
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
        //Survey()
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



#Preview {
    
    Bingo()
    
    
}

