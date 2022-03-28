//
//  NetworkManager.swift
//  ParseJ
//
//  Created by user205798 on 3/28/22.
//

import Foundation

class Networkingmanager : ObservableObject {
    
    @Published var dataList = [DataListEntry]()
    
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        URLSession.shared.dataTask(with: url) {
            (data, _, _) in
            guard let data = data else {return}
            
            let dataList = try! JSONDecoder().decode([DataListEntry].self, from: data)
            
            DispatchQueue.main.async {
                self.dataList = dataList
            }
        }.resume()
    }
    
}
