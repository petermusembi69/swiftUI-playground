//
//  Nodo.swift
//  noTodo
//
//  Created by user205798 on 4/1/22.
//

import Foundation

struct Nodo: Decodable, Encodable, Hashable {
    var id = UUID()
    let name: String
    var isDone: Bool = false
    var createdAt: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d yyyy, h:mm a"
        return dateFormatter.string(from: Date())
    }
}

