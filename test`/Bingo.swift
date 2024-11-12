//
//  Bingo.swift
//  test`
//  test by mandell --
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI
import UIKit


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
    
  @State var showImage: Bool = false
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
            
                Button(action: {buttonPresed()}){
                    Image(button1)                 }.padding(5)
                    .sheet(isPresented: $showImage) {
                        ZStack{
                            Text("kil meeee")
                        }
                    }
            
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
                    Image(button1)                 }.padding(5)            }
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
                    Image(button1)                 }.padding(5)            }
        }.padding()
            .onAppear(){print(num)}
        
    }
    
}


#Preview {

    Bingo()
    
    
}

