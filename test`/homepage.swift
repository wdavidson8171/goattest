//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

struct Homepage: View {
    
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
        
    }
    
    
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
    @State var unlocked1: Bool = true
    @State var unlocked2: Bool = true
    @State var unlocked3: Bool = true
    @State var unlocked4: Bool = true
    @State var unlocked5: Bool = true
    
    
    
    var body: some View {
        let mockScrollData = [
            Button(action: { print("Button 1 pressed")}) {
                Image(imageOneUnlock())
            }, Button(action: { print("Button 2 pressed")}) {
                Image(imageTwoUnlock())
            }, Button(action: { print("Button 3 pressed")}) {
                Image(imageThreeUnlock())
            }, Button(action: { print("Button 4 pressed")}) {
                Image(imageFourUnlock())
            }, Button(action: { print("Button 5 pressed")}) {
                Image(imageFiveUnlock())
            }]
        
        
        VStack(spacing: 5) {
            Text("Profile")
                .font(.largeTitle)
                .bold()
            Image("profileicon")
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            
            HStack{
                Text("Name:")
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
                Text("Goat Clothes Inventory: ")
                    .padding(.bottom, 15)
                    .padding(.top, 6)
                Spacer()
            }
            
            
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(mockScrollData, id: \.self) { picture in
                        
                        Image(picture)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .background(.white)
                            .foregroundColor(.white)
                    }
                    
                }
            }
            
            /*
             figure out how to loop through an array of buttons
             is it the buttons in the list or the images in the buttons?
             */
            
            
            Spacer()
            HStack{
                Image(systemName: "list.bullet.clipboard").foregroundStyle(.accent)
                Button(action: {buttonPresed()}){
                    Text("Survey")}
                .popover(isPresented: $showPopup, arrowEdge: .bottom) {
                    TabView {
                        Survey().tabItem{
                            Label("Survey", systemImage: "list.bullet.clipboard")
                        }
                    }
                }
            }
            
            /*Button(action: { print("Button 1 pressed")}) {
                Image(imageOneUnlock())
            }*/
            
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
        if (unlocked1) { return .bling }
        else {return .locked}
    }
    func imageTwoUnlock() -> ImageResource {
        if (unlocked2) { return .cowboy }
        else {return .locked}
    }
    func imageThreeUnlock() -> ImageResource {
        if (unlocked3) { return .superhero }
        else {return .locked}
    }
    func imageFourUnlock() -> ImageResource {
        if (unlocked4) { return .pirate }
        else {return .locked}
    }
    func imageFiveUnlock() -> ImageResource {
        if (unlocked5) { return .ski }
        else {return .locked}
    }
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
            Homepage()
        }


