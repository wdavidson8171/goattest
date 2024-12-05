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
let cookingArray = ["familyRecipe", "cookies","cake","newRecipe","lunch","breakfast","dinner","barbecue"]
let selfCareArray = ["nap","water","bath","mask","haircut","maniPedi","brushHair","bedEarly","sleepIn","makeSmoothie","phoneBreak","listenToMusic","present","sweettTreat"]
let fallArray = ["pumpkinPatch","pumpkinSpice","hauntedHouse","cornMaze","carvePumpkin"]
let winterArray = ["goToMountain","hotChocolate","pajamaParty","snowman"]
let springArray = ["sitInMeadow","springCleaning","dyeEgg","bouquet"]
let summerArray = ["waterBalloonFight","swimmingHole","pool","berryPicking","amusementPark","beach"]

//var selectedActivities = [String]

struct Bingo: View {
    
    @State var showImage: Bool = false
    @State var showingPopup: Bool = false
    @State var randomArray = [" "]
    
    func randomImage(){
        
        var choice = GlobalVariables.SavedItems[Int.random(in:0...GlobalVariables.SavedItems.count-1)]
        
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
        
        
    func buttonPresed() -> Bool{
            print("kill meeee")
            buttonPressed = true
            hideButton = true
            print(hideButton)
            return hideButton
        }
        func test(){
            print("aghhhhh")
        }
        

        
        let button1 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button2 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button3 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button4 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button5 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button6 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button7 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button8 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button9 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button10 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button11 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button12 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button13 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button14 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button15 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button16 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button17 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button18 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button19 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button20 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button21 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button22 = fallArray[Int.random(in:0...fallArray.count-1)]
        let button23 = choreArray[Int.random(in:0...choreArray.count-1)]
        let button24 = fallArray[Int.random(in:0...fallArray.count-1)]
        
        var body: some View {
            
            
            VStack{
                HStack{
                    
                    Button(action: {hide = buttonPresed()}){
                        Image(button1)
                    }.padding(5).disabled(Image(button1).isPressed)// this is how to disable a button correctly just need to work on when the button pressed func runs vs when this is checked to make it work correctly also disables without graying out
                    Button(action: {buttonPresed()}){
                        Image(button2)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button2)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button1)                 }.padding(5)
                }
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
                    Button(action: {buttonPresed()}){
                        Image(button1)                 }.padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button2)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button2)                 }.padding(5)
                    Button(action: {buttonPresed()}){
                        Image(button1)                 }.padding(5)
                }
            }.padding()
                .onAppear()
            
        }
        
    }
    

#Preview {

    Bingo()
}


