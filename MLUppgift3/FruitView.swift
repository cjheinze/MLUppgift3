//
//  FruitView.swift
//  MLUppgift3
//
//  Created by Carl-Johan Heinze on 2023-10-09.
//

import SwiftUI

struct FruitView: View {
    let fruit: Fruit
    var body: some View {
        VStack {
            Text(fruit.emoji)
                .font(.system(size: 200))
            Text(fruit.name)
                .font(.largeTitle)
                .fontDesign(.rounded)
                .foregroundStyle(.white)
        }
        .padding()
        .background(.tint, in: .rect(cornerRadius: 20))
        .navigationTitle(fruit.name)
    }
}

#Preview {
    FruitView(fruit: Fruit(name: "Apelsin", emoji: "🍊"))
}
