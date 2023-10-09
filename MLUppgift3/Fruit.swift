//
//  Fruit.swift
//  MLUppgift3
//
//  Created by Carl-Johan Heinze on 2023-10-09.
//

import Foundation

struct Fruit: Identifiable, Hashable {
    var id: String { name }
    
    let name: String
    let emoji: String
}
