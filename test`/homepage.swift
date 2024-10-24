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
    @State private var bdayText = ""
    @AppStorage ("STRING_BDAY") var savedBday = ""
    
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
            TextField("Birthday", text: $text)
                .padding()
                .frame(width: 300, height: 30)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .disableAutocorrection(true)
                .onChange(of: bdayText) { text in
                    self.savedBday = text
                }
                .onAppear {
                    self.text = savedBday
                    print("Loaded: \(savedBday)")
                }
            Spacer()
            
            }
            .padding()
            
            
            }
        }
        #Preview {
            Homepage()
        }


