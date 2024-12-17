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
let cheapArray = ["thrifting","coffee","usedBooks","boba","foodCart","arcade","iceCream"]
let spennyArray = ["snackMovie","mall","bookstore","hibachi","tea","brunch","seeSports"]
let cookingArray = ["familyRecipe", "cookies","cake","newRecipe","lunch","dinner","barbecue","breakfast"]
let selfCareArray = ["nap","bath","mask","haircut","maniPedi","brushHair","bedEarly","sleepIn","makeSmoothie","phoneBreak","listenToMusic","present","sweetTreat","water"]
let fallArray = ["pumpkinPatch","pumpkinSpice","hauntedHouse","cornMaze","carvePumpkin"]
let winterArray = ["goToMountain","hotChocolate","pajamaParty","snowman"]
let springArray = ["sitInMeadow","springCleaning","dyeEgg","bouquet"]
let summerArray = ["waterBaloonFight","swimmingHole","pool","berryPicking","amusementPark","beach"]


struct Bingo: View {
    
    @State var showImage: Bool = false
    @State var showingPopup: Bool = false
    @State var randomArray = ["a","b"]
    
    func randomImage(){
        print(GlobalVariables.SavedItems.count)
        
        let choice = GlobalVariables.SavedItems[Int.random(in:0...GlobalVariables.SavedItems.count-1)]
        
        if choice == "Household Chores"{
            for thing in choreArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Indoor Activities"{
            for thing in indoorArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Family Activities"{
            for thing in familyArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Creative Activities"{
            for thing in creativeArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Exercise"{
            for thing in exerciseArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Going Out (fancy)"{
            for thing in spennyArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Going Out (cheap)"{
            for thing in cheapArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Cooking/Baking"{
            for thing in cookingArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Self Care"{
            for thing in selfCareArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Spring"{
            for thing in springArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Summer"{
            for thing in summerArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Fall"{
            for thing in fallArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
            }
        }
        if choice == "Winter"{
            for thing in winterArray{
                if randomArray.contains(thing){
                    print("contains thing")
                }
                else{
                    randomArray.append(thing)
                }
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
        if button1 == "a" || button1 == "b"{
            //randomArray.remove(at: randomArray.firstIndex(of: button1)!)
            button1 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button2 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button2 == "a" || button2 == "b"{
            //randomArray.remove(at: randomArray.firstIndex(of: button2)!)
            button2 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button3 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button3 == "a" || button3 == "b"{
            //randomArray.remove(at: randomArray.firstIndex(of: button3)!)
            button3 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button4 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button4 == "a" || button4 == "b"{
            //randomArray.remove(at: randomArray.firstIndex(of: button4)!)
            button4 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button5 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button5 == "a" || button5 == "b"{
            button5 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button6 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button6 == "a" || button6 == "b"{
            button6 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button7 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button7 == "a" || button7 == "b"{
            button7 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button8 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button8 == "a" || button8 == "b"{
            button8 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button9 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button9 == "a" || button9 == "b"{
            button9 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button10 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button10 == "a" || button10 == "b"{
            button10 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button11 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button11 == "a" || button11 == "b"{
            button11 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button12 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button12 == "a" || button12 == "b"{
            button12 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button13 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button13 == "a" || button13 == "b"{
            button13 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button14 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button14 == "a" || button14 == "b"{
            button14 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button15 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button15 == "a" || button15 == "b"{
            button15 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button16 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button16 == "a" || button16 == "b"{
            button16 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button17 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button17 == "a" || button17 == "b"{
            button17 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button18 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button18 == "a" || button18 == "b"{
            button18 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button19 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button19 == "a" || button19 == "b"{
            button19 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button20 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button20 == "a" || button20 == "b"{
            button20 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button21 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button21 == "a" || button21 == "b"{
            button21 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button22 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button22 == "a" || button22 == "b"{
            button22 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button23 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        if button23 == "a" || button23 == "b"{
            button23 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        button24 = randomArray[Int.random(in:0...randomArray.count-1)]
        if button24 == "a" || button24 == "b"{
            button24 = randomArray[Int.random(in:0...randomArray.count-1)]

        }
        
    }
    
    
    
    var body: some View {
        
        ZStack{
            Image("bingoLady").border(Color.pastelPink, width: 10).cornerRadius(10)
            if GlobalVariables.submitted == true{
                Color.drabPink                                .ignoresSafeArea()

            }
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
                        Image(button5)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button6)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button7)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button8)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(2)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button9)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button10)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button11)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button12)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(2)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button13)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button14)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button15)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button16)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(2)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button17)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button18)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button19)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button20)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(2)
                }
                HStack{
                    Button(action: {buttonPresed()}){
                        Image(button21)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button22)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button23)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(5)
                    
                    Button(action: {buttonPresed()}){
                        Image(button24)                 }
                    .border(Color.darkBrown, width: 3.5)
                    .clipShape(.rect(cornerRadius: 7))
                    .shadow(radius: 5)
                    .padding(2)
                }
            }.padding()
                .onAppear{
                    randomImage()
                    populateArray()
                }
            
            
        }
    }
        
    }
    

#Preview {

    Bingo()
}


