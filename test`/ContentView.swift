//
//  ContentView.swift
//  test`
//
//  Created by Waverly Davidson on 9/24/24.
//

import SwiftUI
import SwiftData
import UIKit
import AVFoundation

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var textInput = ""
    
    @State var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic(){
        guard let url = Bundle.main.url(forResource: "/Users/wdavidson8171/Downloads/filled-with-sunlight-background-dramatic-music-for-video-38-second-327744.mp3", withExtension: "mp3") else { return }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
            audioPlayer?.numberOfLoops = -1
        } catch {
            print("Error playing music: \(error)")
        }
    }
    
    init(){
        playBackgroundMusic()
    }
    
    var body: some View {
        
        TabView{
            Bingo().tabItem{
                Label("Bingo", systemImage: "square.grid.3x3")
            }
            Homepage().tabItem{
                Label("Profile", systemImage: "person.circle")
            }
            Goat().tabItem{
                Label("Goat", systemImage:"lasso.badge.sparkles")
            }
        }
        
        
        
    
    }
        
        
        
}


