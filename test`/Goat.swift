//
//  Goat.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//
import SwiftUI
import Foundation
struct Goat: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @AppStorage("firstOpenedYear") var firstOpenedYear: Int = -1
    @AppStorage("firstOpenedMonth") var firstOpenedMonth: Int = -1
    @AppStorage("firstOpenedDay") var firstOpenedDay: Int = -1
    @AppStorage("firstOpenedHour") var firstOpenedHour: Int = -1
    @AppStorage("firstOpenedMin") var firstOpenedMin: Int = -1
    @AppStorage("firstOpenedSec") var firstOpenedSec: Int = -1
    @AppStorage("firstOpenedDate") var firstOpenedDate: Date = Date()
    @AppStorage("foodFed") var foodFed: Int = 0
    
    var clothesList: [ImageResource] = [.nada, .uggs, .bling, .cowboy, .ski, .superhero, .pirate, .olivia]
    
    @State var currentYear: Int = Calendar.current.component(.year, from: Date())
    @State var currentMonth: Int = Calendar.current.component(.month, from: Date())
    @State var currentDay: Int = Calendar.current.component(.day, from: Date())
    @State var currentHour: Int = Calendar.current.component(.hour, from: Date())
    @State var currentMin: Int = Calendar.current.component(.minute, from: Date())
    @State var currentSec: Int = Calendar.current.component(.second, from: Date())
    @State var secsLeftResult: Int = 0
    @State var currentDate = Date()
    
    
    //how many seconds it takes for the bar to go down by one thing (you can change this number to make it faster/slower, higher number = slower, closer to 0 = faster)
    @State var x: CGFloat = 10
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    @State var percent: CGFloat = 100
    var color1 = Color( colorLiteral(red: 0.7519986012, green: 0.8191245168, blue: 0.67492058, alpha: 1))
    var color2 = Color( colorLiteral(red: 0.2172280641, green: 0.289908183, blue: 0.1743075374, alpha: 1))
    func feedGoat(){
        SoundManager.instance.playGoat()
        if (GlobalVariables.can > 0){
            GlobalVariables.can -= 1
            foodFed += 10
        }
    }
    
    
    var body: some View {
        ZStack{
            if GlobalVariables.submitted == true || GlobalVariables.submitted == false{
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
                //update action with speaker func
                Button (action: {speaker()}){Image( systemName: GlobalVariables.speakerType)}.foregroundStyle(.niceBrown)
                }.position(x: 110, y: 55)
            HStack{
                Image("tincan")
                Text("\(GlobalVariables.can)").font(.system(.body, design: .serif))
            }.position(x: 410, y:55)
            VStack{
                                //tbh I'm not really sure what this does BUT IT WORKS
                    Text("Fatness bar:")
                    .font(.system(size: 24, weight: .black, design: .serif)) .foregroundStyle(.niceBrown)
                        .onReceive(timer) { _ in
                            currentYear = Calendar.current.component(.year, from: Date())
                            currentMonth = Calendar.current.component(.month, from: Date())
                            currentDay = Calendar.current.component(.day, from: Date())
                            currentHour = Calendar.current.component(.hour, from: Date())
                            currentMin = Calendar.current.component(.minute, from: Date())
                            currentSec = Calendar.current.component(.second, from: Date())
                            currentDate = Date()
                            secsLeftResult = getSecondsPassed(getFirstOpenedDate(), to: currentDate)
                            if secsLeftResult < 0 {
                                secsLeftResult = 1
                            }
                            percent = (100 * x - (CGFloat(secsLeftResult) .truncatingRemainder (dividingBy: 100 * x))) / x
                            if isEmpty() {
                                percent = 0
                            }
                        }
                //the code for the bar's appearance
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: height, style: .continuous).frame(width: width, height: height).foregroundColor(Color.gray.opacity(0.2))
                    RoundedRectangle(cornerRadius: height, style: .continuous).frame(width: returnWidth(), height: height).background(
                        LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing).clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                    ).foregroundColor(.clear)
                }
                Text(getGoatStateText())
                    .font(.system(size: 24, weight: .black, design: .serif)) .foregroundStyle(.niceBrown)
                
                
                ZStack(){
                    //calls the method which returns the appropriate goat image
                    Image(getGoatState())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 500, height: 500)
                    Button(action: {feedGoat()}){
                        Image("FOOD").position(x: 170, y:170).cornerRadius(10).border(Color.purple, width: 5)
                            }
                    if(getGoatState() != .deadGoat){
                        Image(clothesList[GlobalVariables.clothesNum])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 500, height: 500)
                            .position(x: 250.5, y: 300)
                    }
                }
                VStack(){
                    Text(GlobalVariables.goatNameText)
                        .font(.system(size: 24, weight: .black, design: .serif)) .foregroundStyle(.niceBrown)
                    Text("Time: " + String(secsLeftResult)).position(x:1000, y:1000)
                }
            }
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
        let secs: Int = (secondsPassed.second!) - (foodFed * 60)
        return secs
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
    
    func speaker(){
        if GlobalVariables.volume == 0.5{
            GlobalVariables.speakerType = "speaker.slash.fill"
            GlobalVariables.volume = 0
        }
        else if GlobalVariables.volume == 0{
            GlobalVariables.speakerType = "speaker.wave.3.fill"
            GlobalVariables.volume = 0.5
            
        }
        
    }
    
    //returns the appropriate goat image
    func getGoatState()-> ImageResource{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) >= 400 * x{
            return .deadGoat
        }
        else if CGFloat(secondsPassed) < 400 * x && CGFloat(secondsPassed) >= 300 * x{
            return .skinnyGoat
        }
        else if CGFloat(secondsPassed) < 300 * x && CGFloat(secondsPassed) >= 200 * x{
            return .normalGoat
        }
        else if CGFloat(secondsPassed) < 200 * x && CGFloat(secondsPassed) >= 100 * x{
            return .plumpGoat
        }
        else{
            return .superGoat
        }
    }
    
    //returns the appropriate goat text
    func getGoatStateText()-> String{
        let secondsPassed: Int = getSecondsPassed(getFirstOpenedDate(), to: getCurrentDate())
        if CGFloat(secondsPassed) >= 400 * x{
            return "DEAD"
        }
        else if CGFloat(secondsPassed) < 400 * x && CGFloat(secondsPassed) >= 300 * x{
            return "VERY SKINNY"
        }
        else if CGFloat(secondsPassed) < 300 * x && CGFloat(secondsPassed) >= 200 * x{
            return "NORMAL"
        }
        else if CGFloat(secondsPassed) < 200 && CGFloat(secondsPassed) >= 100 * x{
            return "PLUMP"
        }
        else{
            return "SUPERB"
        }
    }
    
    func needToReset()-> Bool{
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
}
#Preview {
    Goat()
}



