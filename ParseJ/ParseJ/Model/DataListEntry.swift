//
//  DataListEntry.swift
//  ParseJ
//
//  Created by user205798 on 3/28/22.
//

import Foundation

class DataListEntry : Identifiable, Decodable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
