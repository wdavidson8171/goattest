//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

var selectedImage = ImageResource .nada
var clickedImage = ImageResource .nada
var costOfItem: Int = 0
var tempCoins: Int = 500
var ownedList: [ImageResource] = [.nada]


struct Homepage: View {
    //@AppStorage("ownedList") var ownedList: [ImageResource] = [.nada]
    
    
    let userDefaults = UserDefaults.standard
    UserDefaults.standard.set(ownedList, forKey: "ownedList")
    let savedOwnedList = userDefaults.array(forKey: "ownedList") as? [ImageResource]
    
    /* For next class: figure out how to save an array probably use userdefaults
     should the 1st U in "user defaults" be capitalized or not?
     should you declare owned list first as equal to the data stored?
     or declare it with just nada?
     */
    
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
                .padding(.top, 10)
            Image("profileicon")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.bottom, 15)
                
            
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
                }.padding(.leading, 25)
                .padding(.trailing, 20)
            
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
                .padding(.top, -10)
                .padding(.leading, 5)
                .padding(.trailing, 5)
            
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
                        if isOwned(imagex: .uggs) {
                            selectedImage = .uggs
                        }
                        else{
                            clickedImage = .uggs
                            costOfItem = 100
                            showingPopup = true
                        }
                    } label: {
                        Image(.uggs).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    
                    Button{
                        if isOwned(imagex: .bling) {
                            selectedImage = .bling
                        }
                        else{
                            clickedImage = .bling
                            costOfItem = 100
                            showingPopup = true
                        }
                    } label: {
                        Image(.bling).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned(imagex: .cowboy) {
                            selectedImage = .cowboy
                        }
                        else{
                            clickedImage = .cowboy
                            costOfItem = 100
                            showingPopup = true
                        }
                    } label: {
                        Image(.cowboy).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned(imagex: .ski) {
                            selectedImage = .ski
                        }
                        else{
                            clickedImage = .ski
                            costOfItem = 100
                            showingPopup = true
                        }
                    } label: {
                        Image(.ski).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned(imagex: .superhero) {
                            selectedImage = .superhero
                        }
                        else{
                            clickedImage = .superhero
                            costOfItem = 100
                            showingPopup = true
                        }
                    } label: {
                        Image(.superhero).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100).border(.black, width: 2)
                    }
                    Button{
                        if isOwned(imagex: .pirate) {
                            selectedImage = .pirate
                        }
                        else{
                            clickedImage = .pirate
                            costOfItem = 100
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
                        Button("Buy") {
                            if tempCoins >= costOfItem {
                                ownedList.append(clickedImage)
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
    
    
}

func isOwned(imagex: ImageResource) -> Bool {
    var B = false
    ownedList.forEach { image in
        if imagex == image {
            B = true
        }
    }
    return B
}

        #Preview {
            Homepage()
        }
