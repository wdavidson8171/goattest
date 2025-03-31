//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//
//

import SwiftUI
import PhotosUI

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
    
    func colorPickerPurple(){
            GlobalVariables.color.insert("lavender", at: 0)
            print(GlobalVariables.color)
            internalState = 0
            //update()
            
        }
        func colorPickerPink(){
            GlobalVariables.color.insert("nicePink", at: 0)
            print(GlobalVariables.color)
            internalState = 2
        }
        func colorPickerTeal(){
            GlobalVariables.color.insert("coolTeal", at: 0)
            print(GlobalVariables.color)
            internalState = 1
        }
        
        
        func colorPickerBlue(){
            GlobalVariables.color.insert("pastelBlue", at: 0)
            print(GlobalVariables.color)
            internalState = 4
            
        }
        func colorPickerOrange(){
            GlobalVariables.color.insert("orangish", at: 0)
            print(GlobalVariables.color)
            internalState = 3
        }
        
        func resetColor(){
            internalState = 5
            GlobalVariables.color.insert("white", at: 0)
            
        }

    
    @AppStorage("tempCoins")var tempCoins: Int = GlobalVariables.coin

    //NEWPICREMEMBER1
    //@AppStorage("ownedList2") public var ownedList2 = [Bool?](repeating: false, count: 7)
    @AppStorage("ownedList3") public var ownedList2 = [false, false, false, false, false, false, false]
    
    
    @State private var profileImage: String = UserDefaults.standard.string(forKey: "profileImage") ?? "profileicon"
    //initializes profileImage variable as a string that if not changed starts as profileIcon
    
    
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
    
    @State var showingProfilePopup = false
    
    @State var internalState: Int = 5
    
    /// <#Description#>
    var body: some View {
        
        
        

        ZStack{
            [Color.lavender, .coolTeal, .nicePink, .orangish, .pastelBlue, .white][internalState] .ignoresSafeArea()
            
            VStack(spacing: 5) {
                Text("Profile")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 10)
                VStack{
                    Button{
                        showingProfilePopup = true
                    } label: {
                        Image(profileImage)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(.bottom, 15)
                    }
                }.popover(isPresented: $showingProfilePopup) {
                    VStack{
                        HStack{
                            Button{
                                profileImage = "profileicon"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profileicon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile1"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                            }
                            Button{
                                profileImage = "profile2"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            
                        }
                        HStack{
                            Button{
                                profileImage = "profile3"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile4"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile4")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile5"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile5")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack{
                            Button{
                                profileImage = "profile6"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile6")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile7"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile7")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile8"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile8")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack{
                            Button{
                                profileImage = "profile9"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile9")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile10"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile10")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile11"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile11")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack{
                            Button{
                                profileImage = "profile12"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile12")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile13"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile13")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                            Button{
                                profileImage = "profile14"
                                saveProfileImage(_name: profileImage)
                                showingProfilePopup = false
                            } label: {
                                Image("profile14")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                }
                
                
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
                    Image(systemName: "arrowshape.right.fill").foregroundStyle(.niceBrown)

                    
                    Image(systemName: "list.bullet.clipboard").foregroundStyle(.accent)
                    Button(action: {buttonPresed()}){
                        Text("Survey").font(.system(size: 36, weight: .black, design: .serif)) .foregroundStyle(.niceBrown)}
                    .popover(isPresented: $showPopup, arrowEdge: .bottom) {
                        TabView {
                            Survey().tabItem{
                                Label("Survey", systemImage: "list.bullet.clipboard")
                            }
                            
                                           }
                    }
                    Image (systemName: "arrowshape.left.fill").foregroundStyle(.niceBrown)
                }.padding(15)
                VStack{
                    Text("Customize your background!").font(.system(size: 18, design: .rounded)) .foregroundStyle(.niceBrown)
                    HStack{
                        
                        Button(action: {colorPickerPink()}){
                            Image("swath pink")
                        }.border(Color.black, width: 1.5)
                        Button(action: {colorPickerOrange()}){
                            Image("swath orangish")
                        }.border(Color.black, width: 1.5)
                        Button(action: {colorPickerTeal()}){
                            Image("swath teal")
                        }.border(Color.black, width: 1.5)
                        Button(action: {colorPickerBlue()}){
                            Image("swath blue")
                        }.border(Color.black, width: 1.5)
                        Button(action: {colorPickerPurple()}){
                            Image("swath lavender")
                        }.border(Color.black, width: 1.5)
                    }.padding(7)
                }
                Button (action: {resetColor()}){
                                    Text("Reset Color")
                                        .font(.system(size: 15, design: .rounded)) .foregroundStyle(.niceBrown)
                                        .padding(10)
                                }

                ScrollView(.horizontal) {
                    
                    HStack{
                        ZStack{
                            Color.white
                            Button{
                                selectedImage = .nada
                                GlobalVariables.clothesNum = 0
                            }
                            label: {
                                Image(.nada).resizable()
                                    .aspectRatio(CGSize(width: 25, height: 25), contentMode: .fit)
                                    .frame(width: 100, height: 130)
                                    .border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
                            Button{
                                
                                if isOwned2(position: 0) {
                                    selectedImage = .uggs
                                    GlobalVariables.clothesNum = 1
                                }
                                else{
                                    clickedImage = .uggs
                                    costOfItem = 50
                                    currentPos = 0
                                    showingPopup = true
                                }
                            }
                            label: {
                                Image(.uggs).resizable()
                                    .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 0)))  }
                        }
                        ZStack{
                            Color.white
                            Button{
                                if isOwned2(position: 1) {
                                    selectedImage = .bling
                                    GlobalVariables.clothesNum = 2
                                }
                                else{
                                    clickedImage = .bling
                                    costOfItem = 25
                                    currentPos = 1
                                    showingPopup = true
                                }
                            } label: {
                                Image(.bling).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 1)))
                            }
                        }
                        ZStack{
                            Color.white
                            
                            Button{
                                if isOwned2(position: 2) {
                                    selectedImage = .cowboy
                                }
                                else{
                                    clickedImage = .cowboy
                                    costOfItem = 50
                                    currentPos = 2
                                    showingPopup = true
                                }
                            } label: {
                                Image(.cowboy).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 2)))
                            }
                        }
                        ZStack{
                            Color.white
                            Button{
                                if isOwned2(position: 3) {
                                    selectedImage = .ski
                                }
                                else{
                                    clickedImage = .ski
                                    costOfItem = 320
                                    currentPos = 3
                                    showingPopup = true
                                }
                            } label: {
                                Image(.ski).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 3)))
                            }
                        }
                        ZStack{
                            Color.white
                            Button{
                                if isOwned2(position: 4) {
                                    selectedImage = .superhero
                                }
                                else{
                                    clickedImage = .superhero
                                    costOfItem = 40
                                    currentPos = 4
                                    showingPopup = true
                                }
                            } label: {
                                Image(.superhero).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 4)))
                            }
                        }
                        ZStack{
                            Color.white
                            Button{
                                if isOwned2(position: 5) {
                                    selectedImage = .pirate
                                }
                                else{
                                    clickedImage = .pirate
                                    costOfItem = 30
                                    currentPos = 5
                                    showingPopup = true
                                }
                            } label: {
                                Image(.pirate).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 5)))
                            }
                        }
                        ZStack{
                            Color.white
                            Button{
                                if isOwned2(position: 6){
                                    selectedImage = .olivia
                                }
                                else{
                                    clickedImage = .olivia
                                    costOfItem = 400
                                    currentPos = 6
                                    showingPopup = true
                                }
                            } label: {
                                Image(.olivia).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130).border(.black, width: 2).overlay(Color.gray.opacity(getOverlayOpacity(position : 6)))
                            }
                        }
                    }
                        .popover(isPresented: $showingPopup) {
                        VStack{
                            HStack{
                                Image("coin")
                                Text("\(GlobalVariables.coin -  GlobalVariables.purchased)").font(.system(.body, design: .serif))
                            }.padding(20)
                            Image(clickedImage).resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 500, height: 500).border(.black, width: 5)
                            Text("You need to own Uggs to use this image!")
                            Text("Cost: " + String(costOfItem) + " coins")
                            //Text("Your money: " + String(tempCoins) + " coins")
                            Button("Buy") {
                                if GlobalVariables.coin >= costOfItem {
                                    ownedList2[currentPos] = true
                                    GlobalVariables.purchased += costOfItem
                                    GlobalVariables.coin -= GlobalVariables.purchased
                                    selectedImage = clickedImage
                                    GlobalVariables.clothesNum = currentPos + 1
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
        }
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
    
    func getOverlayOpacity(position: Int) -> Double {
        if isOwned2(position: position) {
            return 0
        } else {
            return 0.7
        }
    }
    
    
    func saveProfileImage(_name: String) {
        UserDefaults.standard.set(_name, forKey: "profileImage")
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
