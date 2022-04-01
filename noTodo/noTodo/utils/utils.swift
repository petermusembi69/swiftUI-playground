//
//  utils.swift
//  noTodo
//
//  Created by user205798 on 4/1/22.
//

import Foundation

func save(nodoList: [Nodo]) {
    guard let data = try? JSONEncoder().encode(nodoList) else {return}
    UserDefaults.standard.set(data, forKey: "nodos")
}
