//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Homepage: View {
    @State private var text = ""
    @AppStorage ("STRING_KEY") var savedText = ""
    @State var selectedDate: Date = Date()
    @AppStorage ("DATE_KEY") var savedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 1900)) ?? Date()
    let endingDate: Date = Date()
    @State private var goatName = ""
    @AppStorage ("GOAT_NAME_KEY") var savedGoatName = ""
    @State var joinDate: Date = Date()
    @AppStorage ("JOIN_DATE_KEY") var savedJoinDate: Date = Date()
    @State var unlocked1: Bool = false
    @State var unlocked2: Bool = false
    @State var unlocked3: Bool = false
    @State var unlocked4: Bool = false
    @State var unlocked5: Bool = false
    
    
    //the locked thing isnt showing up... but also the image isnt so thats good?
    
    
    var body: some View {
        let mockScrollData = [
            Image(imageOneUnlock()), Image(imageTwoUnlock()), Image(imageThreeUnlock()), Image(imageFourUnlock()), Image(imageFiveUnlock())]
        //maye get rid of Image() part here and put it somewhere else??
        
        VStack(spacing: 5) {
            Text("Profile")
                .font(.largeTitle)
                .bold()
            Image("profileicon")
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            
            TextField("Name", text: $text)
                .padding()
                .frame(width: 300, height: 30)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .disableAutocorrection(true)
                .onChange(of: text) { text in
                    self.savedText = text
                }
                .onAppear {
                    self.text = savedText
                    print("Loaded: \(savedText)")
                }
            
            
            DatePicker("Birthday:", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(CompactDatePickerStyle())
                .padding()
                .onChange(of: selectedDate) { selectedDate in
                    self.savedDate = selectedDate
                }
                .onAppear {
                    selectedDate = savedDate
                }
            
            HStack{
                Image("goaticon")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Goat Name: ")
                TextField("", text: $goatName)
                    .padding()
                    .frame(width: 200, height: 30)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .disableAutocorrection(true)
                    .onChange(of: goatName) { goatName in
                        self.savedGoatName = goatName
                    }
                    .onAppear {
                        self.goatName = savedGoatName
                        print("Loaded: \(savedGoatName)")
                    }
            }
            Text("Goat Clothes Inventory: ")
                .frame(alignment: .leading)
            
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(mockScrollData) { picture in mockScrollData[picture]
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .background(.white)
                                    .foregroundColor(.white)
                            }
                        
                        }
                    }
    // gray out? blur? locked clothes but also they have to be able to be unlocked and then the image would change? is that possible? i think so
                
            
            
            Spacer()
            
            Text("Member Since \(joinDate, format: Date.FormatStyle(date: .numeric, time: .omitted))")
                .font(.caption)
                .foregroundColor(.secondary)
                .onChange(of: joinDate) { joinDate in self.savedJoinDate = joinDate
                }
                .onAppear {
                    self.$joinDate.wrappedValue = savedJoinDate
                }
        }
            
        .padding()
            
            }
    func imageOneUnlock() -> ImageResource {
        if (unlocked1) { return .turtleHolder1 }
        else {return .locked}
    }
    func imageTwoUnlock() -> ImageResource {
        if (unlocked1) { return .turtleHolder2 }
        else {return .locked}
    }
    func imageThreeUnlock() -> ImageResource {
        if (unlocked1) { return .turtleHolder3 }
        else {return .locked}
    }
    func imageFourUnlock() -> ImageResource {
        if (unlocked1) { return .turtleHolder4 }
        else {return .locked}
    }
    func imageFiveUnlock() -> ImageResource {
        if (unlocked1) { return .turtleHolder5 }
        else {return .locked}
    }
    //Image(func())
        }


        #Preview {
            Homepage()
        }


