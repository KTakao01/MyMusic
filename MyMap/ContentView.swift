//
//  ContentView.swift
//  MyMap
//
//  Created by Takao Koizumi on 2022/10/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView(searchKey: "東京タワー")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
