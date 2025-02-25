//
//  Homepage.swift
//  test`
//
//  Created by Waverly Davidson on 10/8/24.
//

import SwiftUI

var selectedImage = ImageResource .nada
var ownedList: [ImageResource] = [.nada]
var clickedImage = ImageResource .nada
var costOfItem: Int = 0
var tempCoins: Int = 500
//var color: String



struct Homepage: View {
 
    
    
    //@AppStorage("ownedList") var ownedList: [ImageResource] = [.nada]
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
    
    @State var showPopup = false
    func buttonPresed(){
        showPopup = true
        buttonPressed = true
        
    }
    
    func colorTester(){
        if GlobalVariables.color[0] == "lavender"{
            Color.lavender.ignoresSafeArea()
            print("hey this is running at least")
        }
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
    
    @State var internalState: Int = 5
    var body: some View {
        
       
        ZStack{
            //Color.lavender.ignoresSafeArea()
            [Color.lavender, .coolTeal, .nicePink, .orangish, .pastelBlue, .white][internalState] .ignoresSafeArea()
            
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
                    Image(systemName: "arrowshape.right.fill").foregroundStyle(.niceBrown)
                    
                    Image(systemName: "list.bullet.clipboard").foregroundStyle(.niceBrown)
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
                        
                    }
                    .font(.system(size: 15))
                }.padding(-10)
                
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
                            } label: {
                                Image(.nada).resizable()
                                
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 120)
                                    .border(.black, width: 2)
                            }
                        }
                        
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                        ZStack{
                            Color.white
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
                                    .frame(width: 100, height: 120).border(.black, width: 2)
                            }
                        }
                    }.popover(isPresented: $showingPopup) {
                        VStack{
                            HStack{
                                Image("coin")
                                Text("\(GlobalVariables.coin)").font(.system(.body, design: .serif))
                            }
                            Image(clickedImage).resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 500, height: 500).border(.black, width: 5)
                            Text("You need to own Uggs to use this image!")
                            Text("Cost: " + String(costOfItem) + " coins")
                            Button("Buy") {
                                
                                if GlobalVariables.coin >= costOfItem {
                                    ownedList.append(clickedImage)
                                    GlobalVariables.coin -= costOfItem
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
