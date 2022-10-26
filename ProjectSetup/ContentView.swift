//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Joseph Estanislao Calla Moreyra on 25/10/22.
//

import SwiftUI

struct ActivityView: View {
    var data = (0...1000).map({ "Grid Item \($0)" })
    
    var colums: [GridItem] = [
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center),
        
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center),
        
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: colums) {
                        
                        ForEach(data, id: \.self) { item in
                            ZStack {
                                Circle()
                                    .frame(width: 90, height: 90, alignment: .center)
                                    .foregroundColor(Color.purple)
                                Text(item)
                            }.padding()
                        }
                        
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}


struct HomeView: View {
    @State var textOne = ""
    @State var textTwo = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Your info"),
                            footer: Text("Enter info to create an account.")) {
                        TextField("First Name", text: $textOne)
                        TextField("Last Name", text: $textTwo)
                        TextField("Email Address", text: $textOne)
                        TextField("Home Addres", text: $textTwo)
                    }
                    
                    Section(header: Text("Create Password")) {
                        
                        SecureField("New Password", text: $password)
                        SecureField("Confirm Password", text: $password)
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Activity")
        }
    }
}

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Color.purple
            }
            .navigationTitle("Settings")
        }
    }
}
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("First")
                }
            
            ActivityView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Activity")
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        
        
    }
}

struct ButtonContent: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 24))
            .bold()
            .frame(width: 220, height: 50, alignment: .center)
            .background(Color.pink)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
//                .preferredColorScheme(.light)
        }
        
    }
}
