//
//  ContentView4.swift
//  Instafilter
//
//  Created by Sothesom on 10/12/1402.
//

import SwiftUI

struct ContentView4: View {
    
    @State private var image : Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack{
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image"){
                showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker){
            ImagePicker()
        }
    }
}

#Preview {
    ContentView4()
}
