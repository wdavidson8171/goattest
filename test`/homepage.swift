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
    
    private let mockScrollData = ["\(String(describing: imageOneUnlock))", "turtleHolder2", "turtleHolder3", "turtleHolder4", "turtleHolder5"]
    //the locked thing isnt showing up... but also the image isnt so thats good?
    
    
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
            }
            Text("Goat Clothes Inventory: ")
                .frame(alignment: .leading)
            
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(mockScrollData, id: \.self) { picture in Image(picture)
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
    func imageOneUnlock(unlocked1: Bool) -> String {
        let image1 = if (unlocked1) { "turtleHolder1" } else {"locked"}
        return image1
    }
    //locked image isn't showing up so fix this
    //make names better and less confusing
    //do this for all of them? maybe there's an easier way idk
        }


        #Preview {
            Homepage()
        }


