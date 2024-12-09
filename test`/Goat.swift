//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI
import Foundation




struct Goat: View {
    @State var countDownTimer = 8
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @AppStorage("userOnboarded") var userOnboarded: Bool = false
    
    @AppStorage("firstOpenedYear") var firstOpenedYear: Int = -1
    @AppStorage("firstOpenedMonth") var firstOpenedMonth: Int = -1
    @AppStorage("firstOpenedDay") var firstOpenedDay: Int = -1
    @AppStorage("firstOpenedHour") var firstOpenedHour: Int = -1
    @AppStorage("firstOpenedMin") var firstOpenedMin: Int = -1
    @AppStorage("firstOpenedSec") var firstOpenedSec: Int = -1
    
    @AppStorage("firstOpenedDate") var firstOpenedDate: Date = Date()
    
    @State var currentYear: Int = Calendar.current.component(.year, from: Date())
    @State var currentMonth: Int = Calendar.current.component(.month, from: Date())
    @State var currentDay: Int = Calendar.current.component(.day, from: Date())
    @State var currentHour: Int = Calendar.current.component(.hour, from: Date())
    @State var currentMin: Int = Calendar.current.component(.minute, from: Date())
    @State var currentSec: Int = Calendar.current.component(.second, from: Date())
    
    @State var secsLeftResult: Int = 0
    
    @State var currentDate = Date()
    
    var b: Bool = true
    
    //how many seconds it takes for the bar to go down by one thing (you can change this number to make it faster/slower)
    @State var x: Int = 2
    
    
    
    
    
    
    var body: some View {
        
        VStack{
            //the bar at the top of the screen
            Text("Time until your goat gets sad and skinny: " + String(countDownTimer))
                .onReceive(timer) { _ in
                    currentYear = Calendar.current.component(.year, from: Date())
                    currentMonth = Calendar.current.component(.month, from: Date())
                    currentDay = Calendar.current.component(.day, from: Date())
                    currentHour = Calendar.current.component(.hour, from: Date())
                    currentMin = Calendar.current.component(.minute, from: Date())
                    currentSec = Calendar.current.component(.second, from: Date())
                    currentDate = Date()
                    secsLeftResult = getSecondsPassed(getFirstOpenedDate(), to: currentDate)
                    
                    //if countDownTimer > 0{
                        countDownTimer -= 1
                        
                   // }
                }
            
            Image(getBar(Int: Int(countDownTimer)))
            
            Image(getGoatState())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
                
                
            
            /*Image(.babyGoat)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
            Text("GOAT")
            Text("" + getCurrentTime())
            Text("" + String(firstOpenedYear))*/
            
            
            
            
            Text("firstOpened year: " + String(isFirstOpenedYearSet()))
            Text("firstOpened month: " + String(isFirstOpenedMonthSet()))
            Text("firstOpened day: " + String(isFirstOpenedDaySet()))
            Text("firstOpened hour: " + String(isFirstOpenedHourSet()))
            Text("firstOpened min: " + String(isFirstOpenedMinSet()))
            Text("firstOpened sec: " + String(isFirstOpenedSecSet()))
            
            Text("current year: " + String(currentYear))
            Text("current month: " + String(currentMonth))
            Text("current day: " + String(currentDay))
            Text("current hour: " + String(currentHour))
            Text("current min: " + String(currentMin))
            Text("current sec: " + String(currentSec))
                
                //.onReceive(timer) { _ in
                //self.currentSec = Calendar.current.component(.second, from: Date())
            //}
            
            Text(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short))
            
            Text("" + String(secsLeftResult))
        }
        
    }
    
    //checks to see if this is the first time the app is being opened
    //if it is, it sets the firstOpened year/day/min/etc. to the current time & saves it to app storage
    func isFirstOpenedYearSet()-> Int{
        if firstOpenedYear == -1{
            firstOpenedYear = Calendar.current.component(.year, from: Date())
        }
        return firstOpenedYear
    }
    func isFirstOpenedMonthSet()-> Int{
        if firstOpenedMonth == -1{
            firstOpenedMonth = Calendar.current.component(.month, from: Date())
        }
        return firstOpenedMonth
    }
    func isFirstOpenedDaySet()-> Int{
        if firstOpenedDay == -1{
            firstOpenedDay = Calendar.current.component(.day, from: Date())
        }
        return firstOpenedDay
    }
    func isFirstOpenedHourSet()-> Int{
        if firstOpenedHour == -1{
            firstOpenedHour = Calendar.current.component(.hour, from: Date())
        }
        return firstOpenedHour
    }
    func isFirstOpenedMinSet()-> Int{
        if firstOpenedMin == -1{
            firstOpenedMin = Calendar.current.component(.minute, from: Date())
        }
        return firstOpenedMin
    }
    func isFirstOpenedSecSet()-> Int{
        if firstOpenedSec == -1{
            firstOpenedSec = Calendar.current.component(.second, from: Date())
        }
        return firstOpenedSec
    }
    
    //returns the seconds passed from the date the app was first opened to the current date
    func getSecondsPassed(_ from: Date, to: Date)-> Int{
        let secondsPassed: DateComponents = Calendar.current.dateComponents([.second], from: from, to: to)
        return secondsPassed.second!
    }
    
    //returns the date the app was first opened
    func getFirstOpenedDate() -> Date{
        var comps = DateComponents()
        comps.year = firstOpenedYear
        comps.month = firstOpenedMonth
        comps.day = firstOpenedDay
        comps.hour = firstOpenedHour
        comps.minute = firstOpenedMin
        comps.second = firstOpenedSec
        let date3 = Calendar.current.date(from: comps)!
        return date3
    }
    
    //returns the state of the goat
    func getGoatState()-> ImageResource{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: currentDate)
        if secondsPassed > 8 * x{
            return .deadGoat
        }
        else if secondsPassed <= 8 * x && secondsPassed > 4 * x{
            return .skinnyGoat
        }
        else if secondsPassed <= 4 * x && secondsPassed > 0{
            return .normalGoat
        }
        else if secondsPassed <= 0 && secondsPassed > -4 * x{
            return .plumpGoat
        }
        else{
            return .superGoat
        }
    }
    
    func getBarState(){
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: currentDate)
        if secondsPassed > 8 * x{
            //barState = 0
        }
        else if secondsPassed <= 8 * x && secondsPassed > 4 * x{
            if secondsPassed <= 5 * x && secondsPassed > 4 * x{
                //barState = 4
            }
            else if secondsPassed <= 6 * x && secondsPassed > 5 * x{
                //barState = 3
            }
            else if secondsPassed <= 7 * x && secondsPassed > 6 * x{
                //barState = 2
            }
            
        }
        else if secondsPassed <= 4 * x && secondsPassed > 0{
            //goatstate 2 (normal)
        }
        else if secondsPassed <= 0 && secondsPassed > -4 * x{
            //goatstate 3 (mildly obese)
        }
        else if secondsPassed <= -4 * x{
            //goatstate 4 (morbidly obese)
        }
    }
    
    func getCurrentTime()-> String{
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        return "\(hour):\(minute):\(second)"
    }
    
    //returns how full the bar should be
    func getBar(Int num: Int)-> ImageResource{
        if num == 8{
            return .HB_8
        }
        if num == 7{
            return .HB_7
        }
        if num == 6{
            return .HB_6
        }
        if num == 5{
            return .HB_5
        }
        if num == 4{
            return .HB_4
        }
        if num == 3{
            return .HB_3
        }
        if num == 2{
            return .HB_2
        }
        if num == 1{
            return .HB_1
        }
        else{
            return .hBzero
        }
    }
}

#Preview {
    Goat()
}
