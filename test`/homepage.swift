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
    
    @State private var selection: String?
    
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
                       hint: "Select", options: ["Lovely Lavender", "Brilliant Blue","Pleasant Pink"], selection: $selection
                    )
                }
                
                .font(.system(size: 15))
            }.padding(15)
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
        }
        #Preview {
            Homepage()
        }


