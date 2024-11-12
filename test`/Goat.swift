//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI


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
    
    let currentYear: Int = Calendar.current.component(.year, from: Date())
    let currentMonth: Int = Calendar.current.component(.month, from: Date())
    let currentDay: Int = Calendar.current.component(.day, from: Date())
    let currentHour: Int = Calendar.current.component(.hour, from: Date())
    let currentMin: Int = Calendar.current.component(.minute, from: Date())
    let currentSec: Int = Calendar.current.component(.second, from: Date())
    
    
    
    var body: some View {
        
        VStack{
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
