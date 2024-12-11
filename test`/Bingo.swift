//
//  Bingo.swift
//  test`
//  test by mandell --
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI
import UIKit


var buttonPressed = false
var hideButton = false
var hide = false

var testSquares = ["a","b","c","d","e","f"]

let choreArray = [ "clean_bathroom", "laundry","trash", "sweep", "dishes", "clean_bedroom","bed"]
let familyArray = ["boardgame", "walk","meal","picnic"]
let indoorArray = ["movie","read","puzzle","videoGame"]
let creativeArray = ["fiberCraft","bracelet","collage","paint","write","draw"]
let exerciseArray = ["hike","run","swim","bike","gym","dance","yoga","justDance"]
let cheapArray = ["thriftig","coffee","usedBooks","boba","foodCart","arcade","iceCream"]
let spennyArray = ["snackMovie","mall","bookstore","hibachi","tea","brunch","seeSports"]
let cookingArray = ["familyRecipe", "cookies","cake","newRecipe","lunch","dinner","barbecue"]
let selfCareArray = ["nap","bath","mask","haircut","maniPedi","brushHair","bedEarly","sleepIn","makeSmoothie","phoneBreak","listenToMusic","present","sweettTreat"]
let fallArray = ["pumpkinPatch","pumpkinSpice","hauntedHouse","cornMaze","carvePumpkin"]
let winterArray = ["goToMountain","hotChocolate","pajamaParty","snowman"]
let springArray = ["sitInMeadow","springCleaning","dyeEgg","bouquet"]
let summerArray = ["waterBalloonFight","swimmingHole","pool","berryPicking","amusementPark","beach"]

//var selectedActivities = [String]

struct Bingo: View {
    
    @State var showImage: Bool = false
    @State var showingPopup: Bool = false
    @State var randomArray = ["water","breakfast"]
    
    func randomImage(){
        print(GlobalVariables.SavedItems.count)
        
        let choice = GlobalVariables.SavedItems[Int.random(in:0...GlobalVariables.SavedItems.count-1)]
        
        if choice == "Household Chores"{
            for thing in choreArray{
                randomArray.append(thing)
            }
        }
        if choice == "Indoor Activities"{
            for thing in indoorArray{
                randomArray.append(thing)
            }
        }
        if choice == "Family Activities"{
            for thing in familyArray{
                randomArray.append(thing)
            }
        }
        if choice == "Creative Activities"{
            for thing in creativeArray{
                randomArray.append(thing)
            }
        }
        if choice == "Exercise"{
            for thing in exerciseArray{
                randomArray.append(thing)
            }
        }
        if choice == "Going Out (fancy)"{
            for thing in spennyArray{
                randomArray.append(thing)
            }
        }
        if choice == "Going Out (cheap"{
            for thing in cheapArray{
                randomArray.append(thing)
            }
        }
        if choice == "Cooking/Baking"{
            for thing in cookingArray{
                randomArray.append(thing)
            }
        }
        if choice == "Self Care"{
            for thing in selfCareArray{
                randomArray.append(thing)
            }
        }
        if choice == "Spring"{
            for thing in springArray{
                randomArray.append(thing)
            }
        }
        if choice == "Summer"{
            for thing in summerArray{
                randomArray.append(thing)
            }
        }
        if choice == "Fall"{
            for thing in fallArray{
                randomArray.append(thing)
            }
        }
        if choice == "Winter"{
            for thing in winterArray{
                randomArray.append(thing)
            }
        }
            
            
    }
        
        
    func buttonPresed(){
            print("kill meeee")
            buttonPressed = true
            hideButton = true
            print(hideButton)
            print(randomArray)
            //return hideButton
        }
    
        func test(){
            print("aghhhhh")
    }
    @State var button1 = " "
    @State var button2 = " "
    @State var button3 = " "
    @State var button4 = " "
    @State var button5 = " "
    @State var button6 = " "
    @State var button7 = " "
    @State var button8 = " "
    @State var button9 = " "
    @State var button10 = " "
    @State var button11 = " "
    @State var button12 = " "
    @State var button13 = " "
    @State var button14 = " "
    @State var button15 = " "
    @State var button16 = " "
    @State var button17 = " "
    @State var button18 = " "
    @State var button19 = " "
    @State var button20 = " "
    @State var button21 = " "
    @State var button22 = " "
    @State var button23 = " "
    @State var button24 = " "
    


        
    func populateArray() {  //randomImage()
        print(randomArray.count)
        randomImage()
        button1 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button2 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button3 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button4 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button5 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button6 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button7 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button8 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button9 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button10 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button11 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button12 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button13 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button14 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button15 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button16 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button17 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button18 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button19 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button20 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button21 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button22 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button23 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        button24 = randomArray[Int.random(in:0...randomArray.count-1)]
        
    }
        var body: some View {
            
            
            VStack{
                HStack{
                    
                    Button(action: {buttonPresed()}){
                        Image(button1)}
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                    Button(action: {buttonPresed()}){
                        Image(button2)}
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                    .padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button3)}
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                    .padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button4)}
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                    .padding(2)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button5)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button6)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button7)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button8)                 }.padding(5)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button9)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button10)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button11)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button12)                 }.padding(5)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button13)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button14)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button15)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button16)                 }.padding(5)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button17)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button18)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button19)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button20)                 }.padding(5)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button21)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button22)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button23)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button24)                 }.padding(5)
                }
            }.padding()
                .onAppear{randomImage()
                    populateArray()}
            
        }
        
    }
    

#Preview {

    Bingo()
}


