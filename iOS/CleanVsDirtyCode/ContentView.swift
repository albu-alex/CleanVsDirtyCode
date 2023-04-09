//
//  ContentView.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import SwiftUI

struct ContentView: View {
    private let cleanCodeService = CleanCodeService()
    private let dirtyCodeService = DirtyCodeService()
    
    @State private var cleanCodeLabelText = ""
    @State private var dirtyCodeLabelText = ""
    
    var body: some View {
        VStack(spacing: 24) {
            Button("Clean Code Implementation") {
                let result = cleanCodeService.getTimeForTotalArea()
                cleanCodeLabelText = "\(result)"
            }
            
            Button("Dirty Code Implementation") {
                let result = dirtyCodeService.getTimeForTotalArea()
                dirtyCodeLabelText = "\(result)"
            }
            
            Text("Clean code: \(cleanCodeLabelText)")
            Text("Dirty code: \(dirtyCodeLabelText)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
