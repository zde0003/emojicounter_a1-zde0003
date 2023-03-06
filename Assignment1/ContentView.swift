//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    ListItem()
                    ListItem()
                    ListItem()
                    ListItem()
                    ListItem()
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: View {
    
    var array = ["🤩", "🤣", "😅", "😕", "😭"]
    @State var counter = 0
    
    var body: some View {
        
        HStack {
            
            if counter == -2 {
                Text(array[4])
            } else if counter == -1 {
                Text(array[3])
            } else if counter == 0 {
                Text(array[2])
            } else if counter == 1 {
                Text(array[1])
            } else if counter == 2 {
                Text(array[0])
            } else if counter > 2 {
                Text(array[0])
            } else {
                Text(array[4])
            }
            
            Text("Counter: \(counter)")
                .foregroundColor(.red)
            
            Spacer()
            
            Image(systemName: "plus")
                .frame(width: 30, height: 20, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16).stroke(Color.red, lineWidth: 2)
                            )
                .foregroundColor(.red)
                .onTapGesture {
                    counter += 1
                }
                
            Image(systemName: "minus")
                .frame(width: 30, height: 20, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16).stroke(Color.red, lineWidth: 2)
                            )
                .foregroundColor(.red)
                .onTapGesture {
                    counter -= 1
                }
        }
    }
}
