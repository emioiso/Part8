//
//  ContentView.swift
//  Part8
//
//  Created by emi oiso on 2023/10/03.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var isShownContentView2 = false
    
    var body: some View {
        VStack {
            HStack {
                Button("-"){
                    count -= 1
                }
                Text("Counter: \(count)")
                Button("+"){
                    count += 1
                }
            }
            .padding()
            Button("ContentVew2へ"){
                isShownContentView2 = true
                
            }
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .sheet(isPresented: $isShownContentView2){
            ContentView2(ContentView2Count: $count)
        }
    }
}
struct ContentView2: View {
    @Binding var ContentView2Count: Int
    
    var body: some View {
        Button("+10"){
            ContentView2Count += 10
        }
        .font(.title)
    }
}
#Preview {
    ContentView()
}
