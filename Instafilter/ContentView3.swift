//
//  ContentView3.swift
//  Instafilter
//
//  Created by Sothesom on 10/12/1402.
//
// Notifications Like Lock Screen bottom = .confirmationDialog

import SwiftUI

struct ContentView3: View {
    
    @State private var showingConfirmation = false
    @State private var backgrandColor = Color.white
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 300)
            .background(backgrandColor)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change backgrand", isPresented: $showingConfirmation){
                Button("Red") {backgrandColor = .red}
                Button("Blue") {backgrandColor = .blue}
                Button("Green") {backgrandColor = .green}
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Select a new Color")
            }
    }
}

#Preview {
    ContentView3()
}
