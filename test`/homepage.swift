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
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 1900)) ?? Date()
    let endingDate: Date = Date()
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .bold()
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
            
            Spacer()
            
            DatePicker("Enter Birthday:", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(CompactDatePickerStyle())
            
            }
            .padding()
            
            
            }
        }
        #Preview {
            Homepage()
        }


