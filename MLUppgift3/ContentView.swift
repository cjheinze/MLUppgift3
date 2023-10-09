//
//  ContentView.swift
//  MLUppgift3
//
//  Created by Carl-Johan Heinze on 2023-10-09.
//

import SwiftUI

struct ContentView: View {
    
    let fruits = [
        Fruit(name: "Apelsin", emoji: "🍊"),
        Fruit(name: "Banan", emoji: "🍌"),
        Fruit(name: "Melon", emoji: "🍈"),
        Fruit(name: "Kiwi", emoji: "🥝"),
        Fruit(name: "Citron", emoji: "🍋"),
    ]
    
    var body: some View {
        NavigationStack {
            List(fruits, rowContent: { fruit in
                NavigationLink {
                    FruitView(fruit: fruit)
                } label: {
                    HStack {
                        Text(fruit.emoji)
                        Text(fruit.name)
                    }
                }

            })
            .scrollContentBackground(.hidden)
            .background(LinearGradient(colors: [.red, .orange, .yellow], startPoint: .top, endPoint: .bottom))
            .navigationTitle("Frukter")
        }
    }
}

#Preview {
    ContentView()
}
