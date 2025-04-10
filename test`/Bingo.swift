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
var chosenColor = GlobalVariables.color[GlobalVariables.color.count-1]
//var testSquares = ["a","b","c","d","e","f"]

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

 //@State var opacity1 = 1.0
var opacity2 = 1.0
 var opacity3 = 1.0
 var opacity4 = 1.0
 var opacity5 = 1.0
 var opacity6 = 1.0
 var opacity7 = 1.0
 var opacity8 = 1.0
 var opacity9 = 1.0
 var opacity10 = 1.0
 var opacity11 = 1.0
 var opacity12 = 1.0
 var opacity13 = 1.0
 var opacity14 = 1.0
 var opacity15 = 1.0
 var opacity16 = 1.0
 var opacity17 = 1.0
 var opacity18 = 1.0
 var opacity19 = 1.0
 var opacity20 = 1.0
 var opacity21 = 1.0
 var opacity22 = 1.0
 var opacity23 = 1.0
 var opacity24 = 1.0

struct Bingo: View {
    @State var opacity1 = 1.0
    @State var showImage: Bool = false
    @State var showingPopup: Bool = false
    @AppStorage("randomArray") var randomArray = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x"]
    @State var cans = 0
    @State var coins = 0
    @State var tnum = 1
    @State var overlayOpacity1 = 0.0
    @State var overlayOpacity2 = 0.0
    @State var overlayOpacity3 = 0.0
    @State var overlayOpacity4 = 0.0
    @State var overlayOpacity5 = 0.0
    @State var overlayOpacity6 = 0.0
    @State var overlayOpacity7 = 0.0
    @State var overlayOpacity8 = 0.0
    @State var overlayOpacity9 = 0.0
    @State var overlayOpacity10 = 0.0
    @State var overlayOpacity11 = 0.0
    @State var overlayOpacity12 = 0.0
    @State var overlayOpacity13 = 0.0
    @State var overlayOpacity14 = 0.0
    @State var overlayOpacity15 = 0.0
    @State var overlayOpacity16 = 0.0
    @State var overlayOpacity17 = 0.0
    @State var overlayOpacity18 = 0.0
    @State var overlayOpacity19 = 0.0
    @State var overlayOpacity20 = 0.0
    @State var overlayOpacity21 = 0.0
    @State var overlayOpacity22 = 0.0
    @State var overlayOpacity23 = 0.0
    @State var overlayOpacity24 = 0.0
    
    @State var disabled1: Bool = false
    @State var disabled2: Bool = false
    @State var disabled3: Bool = false
    @State var disabled4: Bool = false
    @State var disabled5: Bool = false
    @State var disabled6: Bool = false
    @State var disabled7: Bool = false
    @State var disabled8: Bool = false
    @State var disabled9: Bool = false
    @State var disabled10: Bool = false
    @State var disabled11: Bool = false
    @State var disabled12: Bool = false
    @State var disabled13: Bool = false
    @State var disabled14: Bool = false
    @State var disabled15: Bool = false
    @State var disabled16: Bool = false
    @State var disabled17: Bool = false
    @State var disabled18: Bool = false
    @State var disabled19: Bool = false
    @State var disabled20: Bool = false
    @State var disabled21: Bool = false
    @State var disabled22: Bool = false
    @State var disabled23: Bool = false
    @State var disabled24: Bool = false
    @State var moneyArray: [String] = [" "]
    @State var chosenColor = GlobalVariables.color[0]
    @State var i = 0
    @State var m = 0
    //@State var blackoutCoins: Int = 0
    
    //var coins = GlobalVariables.coin
    func blackout() {
        m += 1
        GlobalVariables.blackoutCoins += GlobalVariables.coin
        print("coins")
        print(GlobalVariables.coin)
        print("blackout coins")
        print(GlobalVariables.blackoutCoins)
        GlobalVariables.SavedItems = ["You're selected items", "will appear here"]
        randomArray.removeAll()
        randomArray = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x"]
        moneyArray.removeAll()
        while (i) < (25 * m) {
            moneyArray.append ("a")
            i += 1
        }
        GlobalVariables.submitted = false
        print(m)

        overlayOpacity1 = 0.0
        overlayOpacity2 = 0.0
        overlayOpacity3 = 0.0
        overlayOpacity4 = 0.0
        overlayOpacity5 = 0.0
        overlayOpacity6 = 0.0
        overlayOpacity7 = 0.0
        overlayOpacity8 = 0.0
        overlayOpacity9 = 0.0
        overlayOpacity10 = 0.0
        overlayOpacity11 = 0.0
        overlayOpacity12 = 0.0
        overlayOpacity13 = 0.0
        overlayOpacity14 = 0.0
        overlayOpacity15 = 0.0
        overlayOpacity16 = 0.0
        overlayOpacity17 = 0.0
        overlayOpacity18 = 0.0
        overlayOpacity19 = 0.0
        overlayOpacity20 = 0.0
        overlayOpacity21 = 0.0
        overlayOpacity22 = 0.0
        overlayOpacity23 = 0.0
        overlayOpacity24 = 0.0
        opacity1 = 0.0
        opacity2 = 0.0
        opacity3 = 0.0
        opacity4 = 0.0
        opacity5 = 0.0
        opacity6 = 0.0
        opacity7 = 0.0
        opacity8 = 0.0
        opacity9 = 0.0
        opacity10 = 0.0
        opacity11 = 0.0
        opacity12 = 0.0
        opacity13 = 0.0
        opacity14 = 0.0
        opacity15 = 0.0
        opacity16 = 0.0
        opacity17 = 0.0
        opacity18 = 0.0
        opacity19 = 0.0
        opacity20 = 0.0
        opacity21 = 0.0
        opacity22 = 0.0
        opacity23 = 0.0
        opacity24 = 0.0
       
        
    }
   func remakeButtons(){
        
        opacity1 = 1.0
        opacity2 = 1.0
        opacity3 = 1.0
        opacity4 = 1.0
        opacity5 = 1.0
        opacity6 = 1.0
        opacity7 = 1.0
        opacity8 = 1.0
        opacity9 = 1.0
        opacity10 = 1.0
        opacity11 = 1.0
        opacity12 = 1.0
        opacity13 = 1.0
        opacity14 = 1.0
        opacity15 = 1.0
        opacity16 = 1.0
        opacity17 = 1.0
        opacity18 = 1.0
        opacity19 = 1.0
        opacity20 = 1.0
        opacity21 = 1.0
        opacity22 = 1.0
        opacity23 = 1.0
        opacity24 = 1.0
       
       disabled1 = false
       disabled2 = false
       disabled3 = false
       disabled4 = false
       disabled5 = false
       disabled6 = false
       disabled7 = false
       disabled8 = false
       disabled9 = false
       disabled10 = false
       disabled11 = false
       disabled12 = false
       disabled13 = false
       disabled14 = false
       disabled15 = false
       disabled16 = false
       disabled17 = false
       disabled18 = false
       disabled19 = false
       disabled20 = false
       disabled21 = false
       disabled22 = false
       disabled23 = false
       disabled24 = false
       
      // GlobalVariables.coin = GlobalVariables.blackoutCoins
    }

    
    func randomImage(){
        /*print(GlobalVariables.SavedItems.count)
        for choice in randomArray{
            print(choice)
        }*/
        //this shows that random array saves the appended items and remembers them after closing the app (but the bingo card still doesn't show them)
        
        var count = 0
        
        while count < GlobalVariables.SavedItems.count{
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
            
            count += 1
        }
        
    }
    
    
    
    func checkBingo(){

        if (disabled1 && disabled2 && disabled3 && disabled4){
            if !moneyArray.contains("bingo1"){
                moneyArray.append("bingo1")
            }
            //moneyArray.append("bingo1")
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
            print(coins)
            if GlobalVariables.blackoutCoins != 0{
                coins = GlobalVariables.coin + 300
            }
        }
   
        if (disabled5 && disabled6 && disabled7 && disabled8){
            if !moneyArray.contains("bingo2"){
                moneyArray.append("bingo2")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        
        if (disabled9 && disabled10 && disabled11 && disabled12){
            if !moneyArray.contains("bingo3"){
                moneyArray.append("bingo3")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled13 && disabled14 && disabled15 && disabled16){
            if !moneyArray.contains("bingo4"){
                moneyArray.append("bingo4")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10

            coins = GlobalVariables.coin
        }
        if (disabled17 && disabled18 && disabled19 && disabled20){
            if !moneyArray.contains("bingo5"){
                moneyArray.append("bingo5")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10

            coins = GlobalVariables.coin
        }
        if (disabled21 && disabled22 && disabled23 && disabled24){
            if !moneyArray.contains("bingo6"){
                moneyArray.append("bingo6")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10

            coins = GlobalVariables.coin
        }
        if (disabled1 && disabled5 && disabled9 && disabled13){// doesn't work
            if !moneyArray.contains("bingo7"){
                moneyArray.append("bingo7")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10

            coins = GlobalVariables.coin
        }
        if (disabled5 && disabled9 && disabled13 && disabled17){ // doesn't work
            if !moneyArray.contains("bingo8"){
                moneyArray.append("bingo8")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled9 && disabled13 && disabled17 && disabled21){ // doesn't work
            if !moneyArray.contains("bingo9"){
                moneyArray.append("bingo9")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled2 && disabled6 && disabled10 && disabled14){
            if !moneyArray.contains("bingo10"){
                moneyArray.append("bingo10")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled6 && disabled10 && disabled14 && disabled18){
            if !moneyArray.contains("bingo11"){
                moneyArray.append("bingo11")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled10 && disabled14 && disabled18 && disabled22){
            if !moneyArray.contains("bingo12"){
                moneyArray.append("bingo12")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled3 && disabled7 && disabled11 && disabled15){ // doesn't work
            if !moneyArray.contains("bingo13"){
                moneyArray.append("bingo13")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled19 && disabled15 && disabled7 && disabled11){ // doesn't work
            if !moneyArray.contains("bingo14"){
                moneyArray.append("bingo14")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled15 && disabled11 && disabled19 && disabled23){ // doesn't work
            if !moneyArray.contains("bingo15"){
                moneyArray.append("bingo15")
            }
            GlobalVariables.coin = GlobalVariables.coin+10
            coins = GlobalVariables.coin
        }
        if (disabled4 && disabled16 && disabled12 && disabled8){
            if !moneyArray.contains("bingo16"){
                moneyArray.append("bingo16")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled20 && disabled16 && disabled12 && disabled8){
            if !moneyArray.contains("bingo17"){
                moneyArray.append("bingo17")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled12 && disabled16 && disabled20 && disabled24){
            if !moneyArray.contains("bingo18"){
                moneyArray.append("bingo18")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled1 && disabled6 && disabled11 && disabled16){ // doesn't work IDK why
            if !moneyArray.contains("bingo19"){
                moneyArray.append("bingo19")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled5 && disabled10 && disabled15 && disabled20){
            if !moneyArray.contains("bingo20"){
                moneyArray.append("bingo20")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled9 && disabled14 && disabled19 && disabled24){
            if !moneyArray.contains("bingo21"){
                moneyArray.append("bingo21")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled4 && disabled7 && disabled10 && disabled13){ // doesn't work
            if !moneyArray.contains("bingo22"){
                moneyArray.append("bingo22")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled8 && disabled11 && disabled17 && disabled14){ // doesn't work
            if !moneyArray.contains("bingo23"){
                moneyArray.append("bingo23")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled15 && disabled12 && disabled21 && disabled18){
            if !moneyArray.contains("bingo24"){
                moneyArray.append("bingo24")
            }
            GlobalVariables.coin = (moneyArray.count*10)-10
            coins = GlobalVariables.coin
        }
        if (disabled1 && disabled2 && disabled3 && disabled4 && disabled5 && disabled6 && disabled7 && disabled8 && disabled9 && disabled10 && disabled11 && disabled12 && disabled13 && disabled14 && disabled15 && disabled16 && disabled17 && disabled18 && disabled19 && disabled20 && disabled21 && disabled22 && disabled23 && disabled24){
            if !moneyArray.contains("blackout"){
                moneyArray.append("blackout")
                blackout()
                //remakeButtons()
            }
            GlobalVariables.coin = (moneyArray.count*10)-10+50
            coins = GlobalVariables.coin
        }
    }
    
    
    
    func buttonPresed1(){
        tnum = tnum - 1
        overlayOpacity1 = 0.6
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        disabled1 = true
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed2(){
        tnum = tnum - 1
        overlayOpacity2 = 0.6
        disabled2 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed3(){
        tnum = tnum - 1
        overlayOpacity3 = 0.6
        disabled3 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed4(){
        tnum = tnum - 1
        overlayOpacity4 = 0.6
        disabled4 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed5(){
        tnum = tnum - 1
        overlayOpacity5 = 0.6
        disabled5 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed6(){
        tnum = tnum - 1
        overlayOpacity6 = 0.6
        disabled6 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed7(){
        tnum = tnum - 1
        overlayOpacity7 = 0.6
        disabled7 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed8(){
        tnum = tnum - 1
        overlayOpacity8 = 0.6
        disabled8 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed9(){
        tnum = tnum - 1
        overlayOpacity9 = 0.6
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        disabled9 = true
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed10(){
        tnum = tnum - 1
        overlayOpacity10 = 0.6
        disabled10 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed11(){
        tnum = tnum - 1
        overlayOpacity11 = 0.6
        disabled11 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed12(){
        tnum = tnum - 1
        overlayOpacity12 = 0.6
        disabled12 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed13(){
        tnum = tnum - 1
        overlayOpacity13 = 0.6
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        disabled13 = true
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed14(){
        tnum = tnum - 1
        overlayOpacity14 = 0.6
        disabled14 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed15(){
        tnum = tnum - 1
        overlayOpacity15 = 0.6
        disabled15 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed16(){
        tnum = tnum - 1
        overlayOpacity16 = 0.6
        disabled16 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed17(){
        tnum = tnum - 1
        overlayOpacity17 = 0.6
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        disabled17 = true
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed18(){
        tnum = tnum - 1
        overlayOpacity18 = 0.6
        disabled18 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed19(){
        tnum = tnum - 1
        overlayOpacity19 = 0.6
        disabled19 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed20(){
        tnum = tnum - 1
        overlayOpacity20 = 0.6
        disabled20 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed21(){
        tnum = tnum - 1
        overlayOpacity21 = 0.6
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        disabled21 = true
        checkBingo()
        //return hideButton
    }
    
    func buttonPresed22(){
        tnum = tnum - 1
        overlayOpacity22 = 0.6
        disabled22 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed23(){
        tnum = tnum - 1
        overlayOpacity23 = 0.6
        disabled23 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func buttonPresed24(){
        tnum = tnum - 1
        overlayOpacity24 = 0.6
        disabled24 = true
        print("kill meeee")
        buttonPressed = true
        hideButton = true
        print(hideButton)
        print(randomArray)
        GlobalVariables.can = GlobalVariables.can+1
        print(GlobalVariables.can)
        cans = GlobalVariables.can
        checkBingo()
    }
    
    func canCounter(){
       
        if buttonPressed == true{
            
            print("fuck swift")
        }
    }
    
    
    @AppStorage("button1") var button1: String = " "
    @AppStorage("button2") var button2: String = " "
    @AppStorage("button3") var button3: String = " "
    @AppStorage("button4") var button4: String = " "
    @AppStorage("button5") var button5: String = " "
    @AppStorage("button6") var button6: String = " "
    @AppStorage("button7") var button7: String = " "
    @AppStorage("button8") var button8: String = " "
    @AppStorage("button9") var button9: String = " "
    @AppStorage("button10") var button10: String = " "
    @AppStorage("button11") var button11: String = " "
    @AppStorage("button12") var button12: String = " "
    @AppStorage("button13") var button13: String = " "
    @AppStorage("button14") var button14: String = " "
    @AppStorage("button15") var button15: String = " "
    @AppStorage("button16") var button16: String = " "
    @AppStorage("button17") var button17: String = " "
    @AppStorage("button18") var button18: String = " "
    @AppStorage("button19") var button19: String = " "
    @AppStorage("button20") var button20: String = " "
    @AppStorage("button21") var button21: String = " "
    @AppStorage("button22") var button22: String = " "
    @AppStorage("button23") var button23: String = " "
    @AppStorage("button24") var button24: String = " "

    
    
    func populateArray() {  //randomImage()
       //save button name so that it saves the button image
        print(randomArray.count)
        
        //randomImage()
        
        button1 = randomArray[Int.random(in:0...randomArray.count-1)]
        randomImage()
        //print(randomArray)
        if button1 == "a" || button1 == "b" || button1 == "c" || button1 == "d" || button1 == "e" || button1 == "f" || button1 == "g" || button1 == "h" || button1 == "i" || button1 == "j" || button1 == "k" || button1 == "l" || button1 == "m" || button1 == "n" || button1 == "o" || button1 == "p" || button1 == "q" || button1 == "r" || button1 == "s" || button1 == "t" || button1 == "u" || button1 == "v" || button1 == "w" || button1 == "x"{
            while button1 == "a" || button1 == "b" || button1 == "c" || button1 == "d" || button1 == "e" || button1 == "f" || button1 == "g" || button1 == "h" || button1 == "i" || button1 == "j" || button1 == "k" || button1 == "l" || button1 == "m" || button1 == "n" || button1 == "o" || button1 == "p" || button1 == "q" || button1 == "r" || button1 == "s" || button1 == "t" || button1 == "u" || button1 == "v" || button1 == "w" || button1 == "x"{
                
                button1 = randomArray[Int.random(in:0...randomArray.count-1)]
          }
        }
        
        /*trying to save the variable that defines the image
         maybe have to do an if loop where it uses the not app storage untl saved array has a length
         then uses app storage version??
         idrk
         */
        randomArray.remove(at: randomArray.firstIndex(of: button1)!)
        
        button2 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button2 == "a" || button2 == "b" || button2 == "c" || button2 == "d" || button2 == "e" || button2 == "f" || button2 == "g" || button2 == "h" || button2 == "i" || button2 == "j" || button2 == "k" || button2 == "l" || button2 == "m" || button2 == "n" || button2 == "o" || button2 == "p" || button2 == "q" || button2 == "r" || button2 == "s" || button2 == "t" || button2 == "u" || button2 == "v" || button2 == "w" || button2 == "x"{
            while button2 == "a" || button2 == "b" || button2 == "c" || button2 == "d" || button2 == "e" || button2 == "f" || button2 == "g" || button2 == "h" || button2 == "i" || button2 == "j" || button2 == "k" || button2 == "l" || button2 == "m" || button2 == "n" || button2 == "o" || button2 == "p" || button2 == "q" || button2 == "r" || button2 == "s" || button2 == "t" || button2 == "u" || button2 == "v" || button2 == "w" || button2 == "x"{
                print(button2)
                button2 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button2)!)
        
        button3 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button3 == "a" || button3 == "b" || button3 == "c" || button3 == "d" || button3 == "e" || button3 == "f" || button3 == "g" || button3 == "h" || button3 == "i" || button3 == "j" || button3 == "k" || button3 == "l" || button3 == "m" || button3 == "n" || button3 == "o" || button3 == "p" || button3 == "q" || button3 == "r" || button3 == "s" || button3 == "t" || button3 == "u" || button3 == "v" || button3 == "w" || button3 == "x"{
            while button3 == "a" || button3 == "b" || button3 == "c" || button3 == "d" || button3 == "e" || button3 == "f" || button3 == "g" || button3 == "h" || button3 == "i" || button3 == "j" || button3 == "k" || button3 == "l" || button3 == "m" || button3 == "n" || button3 == "o" || button3 == "p" || button3 == "q" || button3 == "r" || button3 == "s" || button3 == "t" || button3 == "u" || button3 == "v" || button3 == "w" || button3 == "x"{
                
                button3 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button3)!)
        
        button4 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button4 == "a" || button4 == "b" || button4 == "c" || button4 == "d" || button4 == "e" || button4 == "f" || button4 == "g" || button4 == "h" || button4 == "i" || button4 == "j" || button4 == "k" || button4 == "l" || button4 == "m" || button4 == "n" || button4 == "o" || button4 == "p" || button4 == "q" || button4 == "r" || button4 == "s" || button4 == "t" || button4 == "u" || button4 == "v" || button4 == "w" || button4 == "x"{
            while button4 == "a" || button4 == "b" || button4 == "c" || button4 == "d" || button4 == "e" || button4 == "f" || button4 == "g" || button4 == "h" || button4 == "i" || button4 == "j" || button4 == "k" || button4 == "l" || button4 == "m" || button4 == "n" || button4 == "o" || button4 == "p" || button4 == "q" || button4 == "r" || button4 == "s" || button4 == "t" || button4 == "u" || button4 == "v" || button4 == "w" || button4 == "x"{
                
                button4 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button4)!)
        
        button5 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button5 == "a" || button5 == "b" || button5 == "c" || button5 == "d" || button5 == "e" || button5 == "f" || button5 == "g" || button5 == "h" || button5 == "i" || button5 == "j" || button5 == "k" || button5 == "l" || button5 == "m" || button5 == "n" || button5 == "o" || button5 == "p" || button5 == "q" || button5 == "r" || button5 == "s" || button5 == "t" || button5 == "u" || button5 == "v" || button5 == "w" || button5 == "x"{
            while button5 == "a" || button5 == "b" || button5 == "c" || button5 == "d" || button5 == "e" || button5 == "f" || button5 == "g" || button5 == "h" || button5 == "i" || button5 == "j" || button5 == "k" || button5 == "l" || button5 == "m" || button5 == "n" || button5 == "o" || button5 == "p" || button5 == "q" || button5 == "r" || button5 == "s" || button5 == "t" || button5 == "u" || button5 == "v" || button5 == "w" || button5 == "x"{
                
                button5 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button5)!)
        
        button6 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button6 == "a" || button6 == "b" || button6 == "c" || button6 == "d" || button6 == "e" || button6 == "f" || button6 == "g" || button6 == "h" || button6 == "i" || button6 == "j" || button6 == "k" || button6 == "l" || button6 == "m" || button6 == "n" || button6 == "o" || button6 == "p" || button6 == "q" || button6 == "r" || button6 == "s" || button6 == "t" || button6 == "u" || button6 == "v" || button6 == "w" || button6 == "x"{
            while button6 == "a" || button6 == "b" || button6 == "c" || button6 == "d" || button6 == "e" || button6 == "f" || button6 == "g" || button6 == "h" || button6 == "i" || button6 == "j" || button6 == "k" || button6 == "l" || button6 == "m" || button6 == "n" || button6 == "o" || button6 == "p" || button6 == "q" || button6 == "r" || button6 == "s" || button6 == "t" || button6 == "u" || button6 == "v" || button6 == "w" || button6 == "x"{
                
                button6 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button6)!)
        
        button7 = randomArray[Int.random(in:0...randomArray.count-1)]
       //randomImage()
        if button7 == "a" || button7 == "b" || button7 == "c" || button7 == "d" || button7 == "e" || button7 == "f" || button7 == "g" || button7 == "h" || button7 == "i" || button7 == "j" || button7 == "k" || button7 == "l" || button7 == "m" || button7 == "n" || button7 == "o" || button7 == "p" || button7 == "q" || button7 == "r" || button7 == "s" || button7 == "t" || button7 == "u" || button7 == "v" || button7 == "w" || button7 == "x"{
            while button7 == "a" || button7 == "b" || button7 == "c" || button7 == "d" || button7 == "e" || button7 == "f" || button7 == "g" || button7 == "h" || button7 == "i" || button7 == "j" || button7 == "k" || button7 == "l" || button7 == "m" || button7 == "n" || button7 == "o" || button7 == "p" || button7 == "q" || button7 == "r" || button7 == "s" || button7 == "t" || button7 == "u" || button7 == "v" || button7 == "w" || button7 == "x"{
                
                button7 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button7)!)
        
        button8 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button8 == "a" || button8 == "b" || button8 == "c" || button8 == "d" || button8 == "e" || button8 == "f" || button8 == "g" || button8 == "h" || button8 == "i" || button8 == "j" || button8 == "k" || button8 == "l" || button8 == "m" || button8 == "n" || button8 == "o" || button8 == "p" || button8 == "q" || button8 == "r" || button8 == "s" || button8 == "t" || button8 == "u" || button8 == "v" || button8 == "w" || button8 == "x"{
            while button8 == "a" || button8 == "b" || button8 == "c" || button8 == "d" || button8 == "e" || button8 == "f" || button8 == "g" || button8 == "h" || button8 == "i" || button8 == "j" || button8 == "k" || button8 == "l" || button8 == "m" || button8 == "n" || button8 == "o" || button8 == "p" || button8 == "q" || button8 == "r" || button8 == "s" || button8 == "t" || button8 == "u" || button8 == "v" || button8 == "w" || button8 == "x"{
                
                button8 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button8)!)
        
        button9 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button9 == "a" || button9 == "b" || button9 == "c" || button9 == "d" || button9 == "e" || button9 == "f" || button9 == "g" || button9 == "h" || button9 == "i" || button9 == "j" || button9 == "k" || button9 == "l" || button9 == "m" || button9 == "n" || button9 == "o" || button9 == "p" || button9 == "q" || button9 == "r" || button9 == "s" || button9 == "t" || button9 == "u" || button9 == "v" || button9 == "w" || button9 == "x"{
            while button9 == "a" || button9 == "b" || button9 == "c" || button9 == "d" || button9 == "e" || button9 == "f" || button9 == "g" || button9 == "h" || button9 == "i" || button9 == "j" || button9 == "k" || button9 == "l" || button9 == "m" || button9 == "n" || button9 == "o" || button9 == "p" || button9 == "q" || button9 == "r" || button9 == "s" || button9 == "t" || button9 == "u" || button9 == "v" || button9 == "w" || button9 == "x"{
                
                button9 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button9)!)
        
        button10 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button10 == "a" || button10 == "b" || button10 == "c" || button10 == "d" || button10 == "e" || button10 == "f" || button10 == "g" || button10 == "h" || button10 == "i" || button10 == "j" || button10 == "k" || button10 == "l" || button10 == "m" || button10 == "n" || button10 == "o" || button10 == "p" || button10 == "q" || button10 == "r" || button10 == "s" || button10 == "t" || button10 == "u" || button10 == "v" || button10 == "w" || button10 == "x"{
            while button10 == "a" || button10 == "b" || button10 == "c" || button10 == "d" || button10 == "e" || button10 == "f" || button10 == "g" || button10 == "h" || button10 == "i" || button10 == "j" || button10 == "k" || button10 == "l" || button10 == "m" || button10 == "n" || button10 == "o" || button10 == "p" || button10 == "q" || button10 == "r" || button10 == "s" || button10 == "t" || button10 == "u" || button10 == "v" || button10 == "w" || button10 == "x"{
                
                button10 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button10)!)
        
        button11 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button11 == "a" || button11 == "b" || button11 == "c" || button11 == "d" || button11 == "e" || button11 == "f" || button11 == "g" || button11 == "h" || button11 == "i" || button11 == "j" || button11 == "k" || button11 == "l" || button11 == "m" || button11 == "n" || button11 == "o" || button11 == "p" || button11 == "q" || button11 == "r" || button11 == "s" || button11 == "t" || button11 == "u" || button11 == "v" || button11 == "w" || button11 == "x"{
            while button11 == "a" || button11 == "b" || button11 == "c" || button11 == "d" || button11 == "e" || button11 == "f" || button11 == "g" || button11 == "h" || button11 == "i" || button11 == "j" || button11 == "k" || button11 == "l" || button11 == "m" || button11 == "n" || button11 == "o" || button11 == "p" || button11 == "q" || button11 == "r" || button11 == "s" || button11 == "t" || button11 == "u" || button11 == "v" || button11 == "w" || button11 == "x"{
                
                button11 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button11)!)
        
        button12 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button12 == "a" || button12 == "b" || button12 == "c" || button12 == "d" || button12 == "e" || button12 == "f" || button12 == "g" || button12 == "h" || button12 == "i" || button12 == "j" || button12 == "k" || button12 == "l" || button12 == "m" || button12 == "n" || button12 == "o" || button12 == "p" || button12 == "q" || button12 == "r" || button12 == "s" || button12 == "t" || button12 == "u" || button12 == "v" || button12 == "w" || button12 == "x"{
            while button12 == "a" || button12 == "b" || button12 == "c" || button12 == "d" || button12 == "e" || button12 == "f" || button12 == "g" || button12 == "h" || button12 == "i" || button12 == "j" || button12 == "k" || button12 == "l" || button12 == "m" || button12 == "n" || button12 == "o" || button12 == "p" || button12 == "q" || button12 == "r" || button12 == "s" || button12 == "t" || button12 == "u" || button12 == "v" || button12 == "w" || button12 == "x"{
                
                button12 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button12)!)
        
        button13 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button13 == "a" || button13 == "b" || button13 == "c" || button13 == "d" || button13 == "e" || button13 == "f" || button13 == "g" || button13 == "h" || button13 == "i" || button13 == "j" || button13 == "k" || button13 == "l" || button13 == "m" || button13 == "n" || button13 == "o" || button13 == "p" || button13 == "q" || button13 == "r" || button13 == "s" || button13 == "t" || button13 == "u" || button13 == "v" || button13 == "w" || button13 == "x"{
            while button13 == "a" || button13 == "b" || button13 == "c" || button13 == "d" || button13 == "e" || button13 == "f" || button13 == "g" || button13 == "h" || button13 == "i" || button13 == "j" || button13 == "k" || button13 == "l" || button13 == "m" || button13 == "n" || button13 == "o" || button13 == "p" || button13 == "q" || button13 == "r" || button13 == "s" || button13 == "t" || button13 == "u" || button13 == "v" || button13 == "w" || button13 == "x"{
                
                button13 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button13)!)
        
        button14 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button14 == "a" || button14 == "b" || button14 == "c" || button14 == "d" || button14 == "e" || button14 == "f" || button14 == "g" || button14 == "h" || button14 == "i" || button14 == "j" || button14 == "k" || button14 == "l" || button14 == "m" || button14 == "n" || button14 == "o" || button14 == "p" || button14 == "q" || button14 == "r" || button14 == "s" || button14 == "t" || button14 == "u" || button14 == "v" || button14 == "w" || button14 == "x"{
            while button14 == "a" || button14 == "b" || button14 == "c" || button14 == "d" || button14 == "e" || button14 == "f" || button14 == "g" || button14 == "h" || button14 == "i" || button14 == "j" || button14 == "k" || button14 == "l" || button14 == "m" || button14 == "n" || button14 == "o" || button14 == "p" || button14 == "q" || button14 == "r" || button14 == "s" || button14 == "t" || button14 == "u" || button14 == "v" || button14 == "w" || button14 == "x"{
                
                button14 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button14)!)
        
        button15 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button15 == "a" || button15 == "b" || button15 == "c" || button15 == "d" || button15 == "e" || button15 == "f" || button15 == "g" || button15 == "h" || button15 == "i" || button15 == "j" || button15 == "k" || button15 == "l" || button15 == "m" || button15 == "n" || button15 == "o" || button15 == "p" || button15 == "q" || button15 == "r" || button15 == "s" || button15 == "t" || button15 == "u" || button15 == "v" || button15 == "w" || button15 == "x"{
            while button15 == "a" || button15 == "b" || button15 == "c" || button15 == "d" || button15 == "e" || button15 == "f" || button15 == "g" || button15 == "h" || button15 == "i" || button15 == "j" || button15 == "k" || button15 == "l" || button15 == "m" || button15 == "n" || button15 == "o" || button15 == "p" || button15 == "q" || button15 == "r" || button15 == "s" || button15 == "t" || button15 == "u" || button15 == "v" || button15 == "w" || button15 == "x"{
                
                button15 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button15)!)
        
        button16 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button16 == "a" || button16 == "b" || button16 == "c" || button16 == "d" || button16 == "e" || button16 == "f" || button16 == "g" || button16 == "h" || button16 == "i" || button16 == "j" || button16 == "k" || button16 == "l" || button16 == "m" || button16 == "n" || button16 == "o" || button16 == "p" || button16 == "q" || button16 == "r" || button16 == "s" || button16 == "t" || button16 == "u" || button16 == "v" || button16 == "w" || button16 == "x"{
            while button16 == "a" || button16 == "b" || button16 == "c" || button16 == "d" || button16 == "e" || button16 == "f" || button16 == "g" || button16 == "h" || button16 == "i" || button16 == "j" || button16 == "k" || button16 == "l" || button16 == "m" || button16 == "n" || button16 == "o" || button16 == "p" || button16 == "q" || button16 == "r" || button16 == "s" || button16 == "t" || button16 == "u" || button16 == "v" || button16 == "w" || button16 == "x"{
                
                button16 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button16)!)
        
        button17 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button17 == "a" || button17 == "b" || button17 == "c" || button17 == "d" || button17 == "e" || button17 == "f" || button17 == "g" || button17 == "h" || button17 == "i" || button17 == "j" || button17 == "k" || button17 == "l" || button17 == "m" || button17 == "n" || button17 == "o" || button17 == "p" || button17 == "q" || button17 == "r" || button17 == "s" || button17 == "t" || button17 == "u" || button17 == "v" || button17 == "w" || button17 == "x"{
            while button17 == "a" || button17 == "b" || button17 == "c" || button17 == "d" || button17 == "e" || button17 == "f" || button17 == "g" || button17 == "h" || button17 == "i" || button17 == "j" || button17 == "k" || button17 == "l" || button17 == "m" || button17 == "n" || button17 == "o" || button17 == "p" || button17 == "q" || button17 == "r" || button17 == "s" || button17 == "t" || button17 == "u" || button17 == "v" || button17 == "w" || button17 == "x"{
                
                button17 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button17)!)
        
        button18 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button18 == "a" || button18 == "b" || button18 == "c" || button18 == "d" || button18 == "e" || button18 == "f" || button18 == "g" || button18 == "h" || button18 == "i" || button18 == "j" || button18 == "k" || button18 == "l" || button18 == "m" || button18 == "n" || button18 == "o" || button18 == "p" || button18 == "q" || button18 == "r" || button18 == "s" || button18 == "t" || button18 == "u" || button18 == "v" || button18 == "w" || button18 == "x"{
            while button18 == "a" || button18 == "b" || button18 == "c" || button18 == "d" || button18 == "e" || button18 == "f" || button18 == "g" || button18 == "h" || button18 == "i" || button18 == "j" || button18 == "k" || button18 == "l" || button18 == "m" || button18 == "n" || button18 == "o" || button18 == "p" || button18 == "q" || button18 == "r" || button18 == "s" || button18 == "t" || button18 == "u" || button18 == "v" || button18 == "w" || button18 == "x"{
                
                button18 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button18)!)
        
        button19 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button19 == "a" || button19 == "b" || button19 == "c" || button19 == "d" || button19 == "e" || button19 == "f" || button19 == "g" || button19 == "h" || button19 == "i" || button19 == "j" || button19 == "k" || button19 == "l" || button19 == "m" || button19 == "n" || button19 == "o" || button19 == "p" || button19 == "q" || button19 == "r" || button19 == "s" || button19 == "t" || button19 == "u" || button19 == "v" || button19 == "w" || button19 == "x"{
            while button19 == "a" || button19 == "b" || button19 == "c" || button19 == "d" || button19 == "e" || button19 == "f" || button19 == "g" || button19 == "h" || button19 == "i" || button19 == "j" || button19 == "k" || button19 == "l" || button19 == "m" || button19 == "n" || button19 == "o" || button19 == "p" || button19 == "q" || button19 == "r" || button19 == "s" || button19 == "t" || button19 == "u" || button19 == "v" || button19 == "w" || button19 == "x"{
                
                button19 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button19)!)
        
        button20 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button20 == "a" || button20 == "b" || button20 == "c" || button20 == "d" || button20 == "e" || button20 == "f" || button20 == "g" || button20 == "h" || button20 == "i" || button20 == "j" || button20 == "k" || button20 == "l" || button20 == "m" || button20 == "n" || button20 == "o" || button20 == "p" || button20 == "q" || button20 == "r" || button20 == "s" || button20 == "t" || button20 == "u" || button20 == "v" || button20 == "w" || button20 == "x"{
            while button20 == "a" || button20 == "b" || button20 == "c" || button20 == "d" || button20 == "e" || button20 == "f" || button20 == "g" || button20 == "h" || button20 == "i" || button20 == "j" || button20 == "k" || button20 == "l" || button20 == "m" || button20 == "n" || button20 == "o" || button20 == "p" || button20 == "q" || button20 == "r" || button20 == "s" || button20 == "t" || button20 == "u" || button20 == "v" || button20 == "w" || button20 == "x"{
                
                button20 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button20)!)
        
        button21 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button21 == "a" || button21 == "b" || button21 == "c" || button21 == "d" || button21 == "e" || button21 == "f" || button21 == "g" || button21 == "h" || button21 == "i" || button21 == "j" || button21 == "k" || button21 == "l" || button21 == "m" || button21 == "n" || button21 == "o" || button21 == "p" || button21 == "q" || button21 == "r" || button21 == "s" || button21 == "t" || button21 == "u" || button21 == "v" || button21 == "w" || button21 == "x"{
            while button21 == "a" || button21 == "b" || button21 == "c" || button21 == "d" || button21 == "e" || button21 == "f" || button21 == "g" || button21 == "h" || button21 == "i" || button21 == "j" || button21 == "k" || button21 == "l" || button21 == "m" || button21 == "n" || button21 == "o" || button21 == "p" || button21 == "q" || button21 == "r" || button21 == "s" || button21 == "t" || button21 == "u" || button21 == "v" || button21 == "w" || button21 == "x"{
                
                button21 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button21)!)
        
        button22 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button22 == "a" || button22 == "b" || button22 == "c" || button22 == "d" || button22 == "e" || button22 == "f" || button22 == "g" || button22 == "h" || button22 == "i" || button22 == "j" || button22 == "k" || button22 == "l" || button22 == "m" || button22 == "n" || button22 == "o" || button22 == "p" || button22 == "q" || button22 == "r" || button22 == "s" || button22 == "t" || button22 == "u" || button22 == "v" || button22 == "w" || button22 == "x"{
            while button22 == "a" || button22 == "b" || button22 == "c" || button22 == "d" || button22 == "e" || button22 == "f" || button22 == "g" || button22 == "h" || button22 == "i" || button22 == "j" || button22 == "k" || button22 == "l" || button22 == "m" || button22 == "n" || button22 == "o" || button22 == "p" || button22 == "q" || button22 == "r" || button22 == "s" || button22 == "t" || button22 == "u" || button22 == "v" || button22 == "w" || button22 == "x"{
                
                button22 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button22)!)
        
        button23 = randomArray[Int.random(in:0...randomArray.count-1)]
        //randomImage()
        if button23 == "a" || button23 == "b" || button23 == "c" || button23 == "d" || button23 == "e" || button23 == "f" || button23 == "g" || button23 == "h" || button23 == "i" || button23 == "j" || button23 == "k" || button23 == "l" || button23 == "m" || button23 == "n" || button23 == "o" || button23 == "p" || button23 == "q" || button23 == "r" || button23 == "s" || button23 == "t" || button23 == "u" || button23 == "v" || button23 == "w" || button23 == "x"{
            while button23 == "a" || button23 == "b" || button23 == "c" || button23 == "d" || button23 == "e" || button23 == "f" || button23 == "g" || button23 == "h" || button23 == "i" || button23 == "j" || button23 == "k" || button23 == "l" || button23 == "m" || button23 == "n" || button23 == "o" || button23 == "p" || button23 == "q" || button23 == "r" || button23 == "s" || button23 == "t" || button23 == "u" || button23 == "v" || button23 == "w" || button23 == "x"{
                
                button23 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button23)!)
        
        button24 = randomArray[Int.random(in:0...randomArray.count-1)]
        if button24 == "a" || button24 == "b" || button24 == "c" || button24 == "d" || button24 == "e" || button24 == "f" || button24 == "g" || button24 == "h" || button24 == "i" || button24 == "j" || button24 == "k" || button24 == "l" || button24 == "m" || button24 == "n" || button24 == "o" || button24 == "p" || button24 == "q" || button24 == "r" || button24 == "s" || button24 == "t" || button24 == "u" || button24 == "v" || button24 == "w" || button24 == "x"{
            while button24 == "a" || button24 == "b" || button24 == "c" || button24 == "d" || button24 == "e" || button24 == "f" || button24 == "g" || button24 == "h" || button24 == "i" || button24 == "j" || button24 == "k" || button24 == "l" || button24 == "m" || button24 == "n" || button24 == "o" || button24 == "p" || button24 == "q" || button24 == "r" || button24 == "s" || button24 == "t" || button24 == "u" || button24 == "v" || button24 == "w" || button24 == "x"{
                
                button24 = randomArray[Int.random(in:0...randomArray.count-1)]
            }
        }
        randomArray.remove(at: randomArray.firstIndex(of: button24)!)
       
    }
        
    
        
        var body: some View {
            ZStack{
                Image("bingoLady").border(Color.pastelPink, width: 10).cornerRadius(10)
                
                
                if GlobalVariables.submitted == true{
                    
                    if GlobalVariables.color[0] == "lavender"{
                        Text("lavender ischosen")
                        Color.lavender.ignoresSafeArea()
                    }
                    else if GlobalVariables.color[0] == "nicePink"{
                        Color.nicePink.ignoresSafeArea()
                    }
                    else if GlobalVariables.color[0] == "coolTeal"{
                        Color.coolTeal.ignoresSafeArea()
                    }
                    else if GlobalVariables.color[0] == "pastelBlue"{
                        Color.pastelBlue.ignoresSafeArea()
                    }
                    else if GlobalVariables.color[0] == "orangish"{
                        Color.orangish.ignoresSafeArea()
                    }
                    else {
                        Color.white.ignoresSafeArea()
                    }
                }
                HStack{
                    Image("coin")
                    Text("\(GlobalVariables.coin)").font(.system(.body, design: .serif))
                    Image("tincan")
                    Text("\(GlobalVariables.can)").font(.system(.body, design: .serif))
                }.position(x: 280, y: 7).padding(20)
                
                VStack{
                    HStack{
                        
                        Button(action: {buttonPresed1()}){
                            Image(button1)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity1))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity1)
                        
                        
                        
                        Button(action: {buttonPresed2()}){
                            Image(button2)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity2))
                        //.foregroundColor(.blue)
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity2)
                        
                        Button(action: {buttonPresed3()}){
                            Image(button3)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity3))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity3)
                        
                        Button(action: {buttonPresed4()}){
                            Image(button4)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity4))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity4)
                    }
                    HStack{
                        Button(action: {buttonPresed5()}){
                            Image(button5)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity5))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity5)
                        
                        Button(action: {buttonPresed6()}){
                            Image(button6)}
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity6))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity6)
                        
                        Button(action: {buttonPresed7()}){
                            Image(button7)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity7))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity7)
                        
                        Button(action: {buttonPresed8()}){
                            Image(button8)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity8))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity8)
                    }
                    HStack{
                        Button(action: {buttonPresed9()}){
                            Image(button9)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity9))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity9)
                        
                        Button(action: {buttonPresed10()}){
                            Image(button10)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity10))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity10)
                        
                        Button(action: {buttonPresed11()}){
                            Image(button11)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity11))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity11)
                        
                        Button(action: {buttonPresed12()}){
                            Image(button12)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity12))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity12)
                    }
                    HStack{
                        Button(action: {buttonPresed13()}){
                            Image(button13)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity13))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity13)
                        
                        Button(action: {buttonPresed14()}){
                            Image(button14)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity14))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity14)
                        
                        Button(action: {buttonPresed15()}){
                            Image(button15)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity15))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity15)
                        
                        Button(action: {buttonPresed16()}){
                            Image(button16)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity16))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity16)
                    }
                    HStack{
                        Button(action: {buttonPresed17()}){
                            Image(button17)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity17))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity17)
                        
                        Button(action: {buttonPresed18()}){
                            Image(button18)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity18))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity18)
                        
                        Button(action: {buttonPresed19()}){
                            Image(button19)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity19))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity19)
                        
                        Button(action: {buttonPresed20()}){
                            Image(button20)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity20))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity20)
                    }
                    HStack{
                        Button(action: {buttonPresed21()}){
                            Image(button21)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity21))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .opacity(opacity21)
                        
                        Button(action: {buttonPresed22()}){
                            Image(button22)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity22))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity22)
                        
                        Button(action: {buttonPresed23()}){
                            Image(button23)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity23))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(5)
                        .opacity(opacity23)
                        
                        Button(action: {buttonPresed24()}){
                            Image(button24)                 }
                        .overlay(Rectangle().foregroundColor(.black).opacity(overlayOpacity24))
                        .border(Color.darkBrown, width: 3.5)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .padding(2)
                        .opacity(opacity24)
                    }
                }.padding()
                    .onAppear{
                        /*if GlobalVariables.SavedItems.count > 0 {
                         
                         populateArray()
                         canCounter()
                         }
                         else if GlobalVariables.submitted == true{
                         //or if random array has values then show
                         //maybe change second part to own if loop
                         //in 2nd if loop dont include randomImage() function
                         randomImage()
                         populateArray()
                         canCounter()
                         }*/
                        if GlobalVariables.submitted == true{
                            //or if random array has values then show
                            //maybe change second part to own if loop
                            //in 2nd if loop dont include randomImage() function
                            randomImage()
                            populateArray()
                            canCounter()
                            remakeButtons()
                           
                        }
                    }
                
                
            }
        }
        
    }
    

    #Preview {
        
        Bingo()
    }
    
    
