//
//  ContentView.swift
//  Riter
//
//  Created by Shahed Tarek  on 17/06/2023.
//
import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var message = "Have some cookies! 🍪"
    
    var body: some View {
        VStack {
            Text("\(counter) Cookies eaten")
            Button {
                print("Bye Bye Cookie")
                counter += 1
                if counter >= 40 {
                    message = "I hope you have health insurance 😔"
                }else if counter >= 30 {
                    message = "Eating any more could be fatal! 🤕"
                }else if counter >= 20 {
                    message = "Don't eat too many cookies 🙃"
                
            }
        } label: {
            Text("Counter Click")
            
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10)
        }
            Button {
                counter -= 1
            }label: {
                Text("One less piece of 🍪")
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            Button {
                counter = 0
            }label: {
                Text("Reset")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10)
            }
            
        Text(message)
            if counter >= 40 {
                Text("😡")
                    .padding()
                    .font(.system(size: 80))
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
