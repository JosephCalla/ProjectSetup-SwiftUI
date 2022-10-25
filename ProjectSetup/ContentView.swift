//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Joseph Estanislao Calla Moreyra on 25/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 200) {
            ZStack {
                Color.blue
                HStack {
                    Text("First")
                    Text("Second")
                    Text("Third")
                }
            }
            
            
            Spacer()
            
            ZStack {
                Text("Second vertical thing")
            }
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
        
    }
}
