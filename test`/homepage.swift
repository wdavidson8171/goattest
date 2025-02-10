//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

var selectedImage = ImageResource .nada
//var ownedList: [ImageResource] = [.nada]
var clickedImage = ImageResource .nada
var costOfItem: Int = 0
//var tempCoins: Int = 500
var currentPos: Int = 0

extension Array: RawRepresentable where Element: Codable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode([Element].self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}

struct Homepage: View {
    @AppStorage("tempCoins")var tempCoins: Int = 500

    
    @AppStorage("ownedList2") public var ownedList2: [Bool] = [false, false, false, false, false, false]
    
    
    
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
        
    }
    
    
    @State private var text = ""
    @AppStorage("STRING_KEY") var savedText = ""
    @State var selectedDate: Date = Date()
    @AppStorage("DATE_KEY") var savedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 1900)) ?? Date()
    let endingDate: Date = Date()
    @State private var goatName = ""
    @AppStorage("GOAT_NAME_KEY") var savedGoatName = ""
    @State var joinDate: Date = Date()
    @AppStorage("JOIN_DATE_KEY") var savedJoinDate: Date = Date()
    
    @State private var selection: String?
    
    @State var showingPopup = false
    
    
    var body: some View {
        
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
            }.padding(15)
            
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
            }.padding(15)
            VStack{
                Text("Customize your background!").font(.system(size: 18, design: .rounded))
                VStack(spacing:15){
                    dropDownView(
                        hint: "Select", options: ["Lovely Lavender", "Bombastic Blue","Pleasant Pink"], selection: $selection
                    )
                }
                
                .font(.system(size: 15))
            }.padding(15)
            
            ScrollView(.horizontal) {
                HStack{
                    Button{
                        selectedImage = .nada
                    } label: {
                        Image(.nada).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .border(.black, width: 2)
                    }
                    
                    Button{
                        if isOwned2(position: 0) {
                            selectedImage = .uggs
                            ownedList2[0] = true
                        }
                        else{
                            clickedImage = .uggs
                            costOfItem = 100
                            currentPos = 0
                            showingPopup = true
                        }
                    } label: {
                        Image(.uggs).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    
                    Button{
                        if isOwned2(position: 1) {
                            selectedImage = .bling
                            ownedList2[1] = true
                        }
                        else{
                            clickedImage = .bling
                            costOfItem = 100
                            currentPos = 1
                            showingPopup = true
                        }
                    } label: {
                        Image(.bling).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned2(position: 2) {
                            selectedImage = .cowboy
                            ownedList2[2] = true
                        }
                        else{
                            clickedImage = .cowboy
                            costOfItem = 100
                            currentPos = 2
                            showingPopup = true
                        }
                    } label: {
                        Image(.cowboy).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned2(position: 3) {
                            selectedImage = .ski
                            ownedList2[3] = true
                        }
                        else{
                            clickedImage = .ski
                            costOfItem = 100
                            currentPos = 3
                            showingPopup = true
                        }
                    } label: {
                        Image(.ski).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned2(position: 4) {
                            selectedImage = .superhero
                            ownedList2[4] = true
                        }
                        else{
                            clickedImage = .superhero
                            costOfItem = 100
                            currentPos = 4
                            showingPopup = true
                        }
                    } label: {
                        Image(.superhero).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned2(position: 5) {
                            selectedImage = .pirate
                            ownedList2[5] = true
                        }
                        else{
                            clickedImage = .pirate
                            costOfItem = 100
                            currentPos = 5
                            showingPopup = true
                        }
                    } label: {
                        Image(.pirate).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                }.popover(isPresented: $showingPopup) {
                    VStack{
                        Image(clickedImage).resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 500, height: 500).border(.black, width: 5)
                        Text("You need to own Uggs to use this image!")
                        Text("Cost: " + String(costOfItem) + " coins")
                        Text("Your money: " + String(tempCoins) + " coins")
                        Button("Buy") {
                            if tempCoins >= costOfItem {
                                //ERROR COME BACK AND CHANGE FIX
                                //ownedList.append(clickedImage)
                                ownedList2[currentPos] = true
                                tempCoins -= costOfItem
                                selectedImage = clickedImage
                                showingPopup = false
                            }
                            else{
                                Text("Not enough coins!")
                            }
                        }
                    }

                }
            }
            
            
            
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
        
        //GlobalVariables.coin += 10
        
    }
    
    func isOwned2(position: Int) -> Bool {
        if ownedList2[position] == true{
            return true
        }
        else {
            return false
        }
    }
}

//ERROR, OWNEDLIST, COME BACK & EDIT
/*func isOwned(imagex: ImageResource) -> Bool {
    var B = false
    /*ownedList.forEach { image in
        if imagex == image {
            B = true
        }
    }*/
    return B
}*/

/*func isOwned2(position: Int) -> Bool {
    if ownedList2[position].equals(true) {
        return true
    }
    else {
        return false
    }
}*/

        #Preview {
            Homepage()
        }
