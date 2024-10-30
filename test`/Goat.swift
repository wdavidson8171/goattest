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
    @State var img: Image?
    
    var body: some View {
        /*NavigationStack{
            HStack{
                NavigationLink("Inventory", destination: Inventory())
                NavigationLink("Dress Up", destination: DressUp())
            }
        }*/
        VStack{
            Text("Time until your goat gets sad and skinny: " + String(countDownTimer))
                .onReceive(timer) { _ in
                    if countDownTimer > 0{
                        countDownTimer -= 1
                        
                    }
                }
            Image(getBar(Int: Int(countDownTimer)))
            
            Image(.babyGoat)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
            Text("GOAT")
            Text("" + getCurrentTime())
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
