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
    
    let currentYear: Int = Calendar.current.component(.year, from: Date())
    let currentMonth: Int = Calendar.current.component(.month, from: Date())
    let currentDay: Int = Calendar.current.component(.day, from: Date())
    let currentHour: Int = Calendar.current.component(.hour, from: Date())
    let currentMin: Int = Calendar.current.component(.minute, from: Date())
    let currentSec: Int = Calendar.current.component(.second, from: Date())
    
    let day1 = Date()
    let day2 = Date().addingTimeInterval(109283)
    
    //why doesnt this work omfg
    var comps = DateComponents()
    comps.year = firstOpenedYear
    comps.month = firstOpenedMonth
    comps.day = firstOpenedDay
    comps.hour = firstOpenedHour
    comps.minute = firstOpenedMin
    comps.second = firstOpenedSec
    let date3 = Calendar.current.date(from: comps)!
    
    
    
    //how many seconds it takes for the bar to go down by one thing
    @State var x: CGFloat
    
    @State var nowe: Date
    //let sjdn: Int = Calendar.current.component(.second, from: now.addingTimeInterval(x))
    //Calender.current.component.distance(to: now.addingTimeInterval(x))
    @State var sjdn: Int = 1
    
    init(){
        //how many seconds it takes for the bar to go down by one thing
        _x = .init(initialValue: 20.0)
        
        _nowe = .init(initialValue: Date())
        _sjdn = State(initialValue: Int(Calendar.current.component(.second, from: nowe.addingTimeInterval(x))))
    }
    
    
    
    
    var body: some View {
        
        VStack{
            //the bar at the top of the screen
            Text("Time until your goat gets sad and skinny: " + String(countDownTimer))
                .onReceive(timer) { _ in
                    //if countDownTimer > 0{
                        countDownTimer -= 1
                        
                   // }
                }
            
            Image(getBar(Int: Int(countDownTimer)))
            
            Image(.babyGoat)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
            Text("GOAT")
            Text("" + getCurrentTime())
            Text("" + String(firstOpenedYear))
            
            
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
            
            Text(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short))
            
            Text("" + String(getSecondsPassed(day1, to: day2)))
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
    
    
    func getSecondsPassed(_ from: Date, to: Date)-> Int{
        let secondsPassed: DateComponents = Calendar.current.dateComponents([.second], from: from, to: to)
        
        return secondsPassed.second!
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
