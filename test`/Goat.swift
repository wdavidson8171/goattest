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
    
    //how many seconds it takes for the bar to go down by one thing (you can change this number to make it faster/slower, higher number = slower, closer to 0 = faster)
    @State var x: CGFloat = 1000
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    @State var percent: CGFloat = 100
    var color1 = Color(#colorLiteral(red: 0.7519986012, green: 0.8191245168, blue: 0.67492058, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.2172280641, green: 0.289908183, blue: 0.1743075374, alpha: 1))
    
    
    
    
    
    
    var body: some View {
        
        VStack{
            //tbh I'm not really sure what this does BUT IT WORKS
            Text("Fatness bar:")
                .onReceive(timer) { _ in
                    currentYear = Calendar.current.component(.year, from: Date())
                    currentMonth = Calendar.current.component(.month, from: Date())
                    currentDay = Calendar.current.component(.day, from: Date())
                    currentHour = Calendar.current.component(.hour, from: Date())
                    currentMin = Calendar.current.component(.minute, from: Date())
                    currentSec = Calendar.current.component(.second, from: Date())
                    currentDate = Date()
                    secsLeftResult = getSecondsPassed(getFirstOpenedDate(), to: currentDate)
                    countDownTimer -= 1
                    if needToReset() {
                        percent = 100
                    }
                    if isFull() {
                        percent = 100
                    }
                    else if isEmpty() {
                        percent = 0
                    }
                    else if percent > 0 {
                        percent -= (100 / CGFloat(x)) * 0.01
                    }
                }
            
            //Text("needtoreset result: " + String(needToReset()))
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height, style: .continuous).frame(width: width, height: height).foregroundColor(Color.gray.opacity(0.2))
                RoundedRectangle(cornerRadius: height, style: .continuous).frame(width: returnWidth(), height: height).background(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing).clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                ).foregroundColor(.clear)
            }
            
            Text(getGoatStateText())
            
            
            //calls the method which returns the appropriate bar image
            //Image(getBarState())
            
            ZStack(){
                //calls the method which returns the appropriate goat image
                Image(getGoatState())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                //Image(.testHat)
                    //.resizable()
                    //.aspectRatio(contentMode: .fit)
                    //.frame(width: 500, height: 500)
                    //.padding([.bottom],160)
                    //.padding([.leading], 70)
                Image(.bling)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                    .padding([.trailing], 30)
                    .padding([.top], 5)
                Image(.cowboy)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                    .padding([.trailing], 30)
                    .padding([.top], 10)
                Image(.superhero)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                    .padding([.trailing], 30)
                    .padding([.top], 10)
                Image(.pirate)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                    .padding([.trailing], 30)
                    .padding([.top], 10)
                 
                /*Image(.ski)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                    .padding([.trailing], 30)
                    .padding([.top], 10)*/
            }
            
            
            /*Text("firstOpened year: " + String(isFirstOpenedYearSet()))
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
            Text("current sec: " + String(currentSec))*/
            
            //Text(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short))
            
            //Text("percent: " + percent.description)
            //Text("firstdateopened: " + getFirstOpenedDate().description)
            //Text("currentdate: " + currentDate.description)
            
            Text("secsleft: " + String(secsLeftResult))
            
            //let multiplier = width / 100
            
            Text("\(Int(percent))")
            Text("\(400 * x)")
            Text("\(300 * x)")
            Text("\(200 * x)")
            Text("\(100 * x)")
            
                
            
        }
        
    }
    
    func returnWidth()-> CGFloat{
        if (percent * (width/100)) < 0{
            return 0
        }
        else{
            return percent * (width/100)
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
    
    //returns the current date
    func getCurrentDate()-> Date{
        var comps = DateComponents()
        isFirstOpenedYearSet()
        isFirstOpenedMonthSet()
        isFirstOpenedDaySet()
        isFirstOpenedHourSet()
        isFirstOpenedMinSet()
        isFirstOpenedSecSet()
        comps.year = Calendar.current.component(.year, from: Date())
        comps.month = Calendar.current.component(.month, from: Date())
        comps.day = Calendar.current.component(.day, from: Date())
        comps.hour = Calendar.current.component(.hour, from: Date())
        comps.minute = Calendar.current.component(.minute, from: Date())
        comps.second = Calendar.current.component(.second, from: Date())
        let date3 = Calendar.current.date(from: comps)!
        return date3
    }
    
    //returns the appropriate goat image
    func getGoatState()-> ImageResource{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) > 400 * x{
            return .deadGoat
        }
        else if CGFloat(secondsPassed) <= 400 * x && CGFloat(secondsPassed) > 300 * x{
            return .skinnyGoat
        }
        else if CGFloat(secondsPassed) <= 300 * x && CGFloat(secondsPassed) > 200 * x{
            return .normalGoat
        }
        else if CGFloat(secondsPassed) <= 200 && CGFloat(secondsPassed) > 100 * x{
            return .plumpGoat
        }
        else{
            return .superGoat
        }
    }
    
    //returns the appropriate goat image
    func getGoatStateText()-> String{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) > 400 * x{
            return "DEAD"
        }
        else if CGFloat(secondsPassed) <= 400 * x && CGFloat(secondsPassed) > 300 * x{
            return "VERY SKINNY"
        }
        else if CGFloat(secondsPassed) <= 300 * x && CGFloat(secondsPassed) > 200 * x{
            return "NORMAL"
        }
        else if CGFloat(secondsPassed) <= 200 && CGFloat(secondsPassed) > 100 * x{
            return "PLUMP"
        }
        else{
            return "SUPERB"
        }
    }
    
    func needToReset()-> Bool{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        /*if CGFloat(secondsPassed) == 400 * x || CGFloat(secondsPassed) == 300 || CGFloat(secondsPassed) == 200 || CGFloat(secondsPassed) == 100 * x{
            return true
        }*/
        if CGFloat(percent) <= 0{
            return true
        }
        
        else{
            return false
        }
    }
    
    func isEmpty()-> Bool{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) >= 400 * x{
            return true
        }
        else{
            return false
        }
    }
    
    func isFull()-> Bool{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) <= 0 * x{
            return true
        }
        else{
            return false
        }
    }
    
    //returns the appropriate bar image
    /*func getBarState()-> ImageResource{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if secondsPassed > 16 * x{
            return .hBzero
        }
        else if secondsPassed <= 16 * x && secondsPassed > 8 * x{
            if secondsPassed < 9 * x{
                return .HB_8
            }
            else if secondsPassed < 10 * x{
                return .HB_7
            }
            else if secondsPassed < 11 * x{
                return .HB_6
            }
            else if secondsPassed < 12 * x{
                return .HB_5
            }
            else if secondsPassed < 13 * x{
                return .HB_4
            }
            else if secondsPassed < 14 * x{
                return .HB_3
            }
            else if secondsPassed < 15 * x{
                return .HB_2
            }
            else if secondsPassed < 16 * x{
                return .HB_1
            }
            //(if it equals 16)
            else{
                return .hBzero
            }
        }
        else if secondsPassed <= 8 * x && secondsPassed > 0{
            if secondsPassed < 1 * x{
                return .HB_8
            }
            else if secondsPassed < 2 * x{
                return .HB_7
            }
            else if secondsPassed < 3 * x{
                return .HB_6
            }
            else if secondsPassed < 4 * x{
                return .HB_5
            }
            else if secondsPassed < 5 * x{
                return .HB_4
            }
            else if secondsPassed < 6 * x{
                return .HB_3
            }
            else if secondsPassed < 7 * x{
                return .HB_2
            }
            else if secondsPassed < 8 * x{
                return .HB_1
            }
            //(if it equals 8)
            else{
                return .hBzero
            }
        }
        else if secondsPassed <= 0 && secondsPassed > -8 * x{
            if secondsPassed < -7 * x{
                return .HB_8
            }
            else if secondsPassed < -6 * x{
                return .HB_7
            }
            else if secondsPassed < -5 * x{
                return .HB_6
            }
            else if secondsPassed < -4 * x{
                return .HB_5
            }
            else if secondsPassed < -3 * x{
                return .HB_4
            }
            else if secondsPassed < -2 * x{
                return .HB_3
            }
            else if secondsPassed < -1 * x{
                return .HB_2
            }
            else if secondsPassed < 0 * x{
                return .HB_1
            }
            //(if it equals 0)
            else{
                return .hBzero
            }
        }
        else if secondsPassed <= -8 * x && secondsPassed > -16 * x{
            if secondsPassed < -15 * x{
                return .HB_8
            }
            else if secondsPassed < -14 * x{
                return .HB_7
            }
            else if secondsPassed < -13 * x{
                return .HB_6
            }
            else if secondsPassed < -12 * x{
                return .HB_5
            }
            else if secondsPassed < -11 * x{
                return .HB_4
            }
            else if secondsPassed < -10 * x{
                return .HB_3
            }
            else if secondsPassed < -9 * x{
                return .HB_2
            }
            else if secondsPassed < -8 * x{
                return .HB_1
            }
            //(if it equals -16)
            else{
                return .hBzero
            }
        }
        //(if its less than -16)
        else{
            return .HB_8
        }
    }*/
    
    /*func getGoatClothes()-> ImageResource{
        if INSERT CONDITION HERE{
            return .bling
        }
        else if INSERT CONDITION HERE{
            return .cowboy
        }
        else if INSERT CONDITION HERE{
            return .superhero
        }
        else if INSERT CONDITION HERE{
            return .pirate
        }
        else if INSERT CONDITION HERE{
            return .ski
        }
        else{
            return .blank
        }
    }*/
    
}

#Preview {
    Goat()
}
