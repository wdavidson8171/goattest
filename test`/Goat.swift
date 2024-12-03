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
                    
                    //if countDownTimer > 0{
                        countDownTimer -= 1
                        
                   // }
                }
            
            //Image(getBar(Int: Int(countDownTimer)))
            Image(getBarState())
            
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
        return secondsPassed.second! - 50
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
    
    func getCurrentDate()-> Date{
        var comps = DateComponents()
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
        if secondsPassed > 16 * x{
            return .deadGoat
        }
        else if secondsPassed <= 16 * x && secondsPassed > 8 * x{
            return .skinnyGoat
        }
        else if secondsPassed <= 8 * x && secondsPassed > 0{
            return .normalGoat
        }
        else if secondsPassed <= 0 && secondsPassed > -8 * x{
            return .plumpGoat
        }
        else{
            return .superGoat
        }
    }
    
    //returns the appropriate bar image
    func getBarState()-> ImageResource{
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
            //(if it equals 0)
            else{
                return .hBzero
            }
        }
        //(if its less than -16)
        else{
            return .HB_8
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
}

#Preview {
    Goat()
}
