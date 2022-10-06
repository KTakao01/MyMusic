//
//  ContentView.swift
//  MyMusic
//
//  Created by Takao Koizumi on 2022/10/06.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            
            HStack{
                Button(action:{
                    
                    soundPlayer.cymbalPlay()
                    
                }){
                    Image("cymbal")
                }
                 
                Button(action: {
                    
                    soundPlayer.guitarPlay()
                        
                    }){
                    Image("guitar")
                    }
                }
            }
    
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
