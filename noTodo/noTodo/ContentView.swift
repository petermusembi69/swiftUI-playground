//
//  ContentView.swift
//  noTodo
//
//  Created by user205798 on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var nodo: String = ""
    @State var nodoList: [Nodo] = { () -> [Nodo] in
        guard var data =  UserDefaults.standard.data(forKey: "nodos") else {
            return []
        }
        if let json = try? JSONDecoder().decode([Nodo].self, from: data){
            return json
        }
        return []
    }()
    
    var body: some View {
        NavigationView() {
            VStack {
                HStack(spacing:5) {
                    Image(systemName: "plus.circle")
                        .padding(.leading)
                    
                    Group {
                        TextField("What will You NOT Do Today?", text: self.$nodo, onEditingChanged: {(changed) in }) {
                            	
                            self.nodoList.insert(
                                Nodo(name: self.nodo),at: 0)
                            save(nodoList: self.nodoList)
                            self.nodo = ""
                        }.padding(.all, 12)
                    }.background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 5)
                    .padding(.trailing, 8)
                    }
                List() {
                    ForEach(self.nodoList, id: \.self) {
                        
                        nodoValue in
                        NoDoRow(nodoValue: nodoValue, nodoList: self.nodoList)
                    }
                    .onDelete(perform: deleteNoDoValue)
                    
                }
            }.navigationBarTitle("No Todo")
        }
    
    }
    
    
    
    func toggleIsDone(at offsets: IndexSet) {
        
        guard let index = Array(offsets).first else {return}
        self.nodoList[index].isDone.toggle()
        save(nodoList: self.nodoList)
        
        
    }

    
    
    func deleteNoDoValue(at offsets: IndexSet) {
        
        guard let index = Array(offsets).first else {return}
        self.nodoList.remove(at: index)
        save(nodoList: self.nodoList)
        
    }
    func timeAgoSinceDate(_ date:Date, numericDates:Bool = false) -> String {
            let calendar = NSCalendar.current
            let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
            let now = Date()
            let earliest = now < date ? now : date
            let latest = (earliest == now) ? date : now
            let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
            
            if (components.year! >= 2) {
                return "\(components.year!) years ago"
            } else if (components.year! >= 1){
                if (numericDates){
                    return "1 year ago"
                } else {
                    return "Last year"
                }
            } else if (components.month! >= 2) {
                return "\(components.month!) months ago"
            } else if (components.month! >= 1){
                if (numericDates){
                    return "1 month ago"
                } else {
                    return "Last month"
                }
            } else if (components.weekOfYear! >= 2) {
                return "\(components.weekOfYear!) weeks ago"
            } else if (components.weekOfYear! >= 1){
                if (numericDates){
                    return "1 week ago"
                } else {
                    return "Last week"
                }
            } else if (components.day! >= 2) {
                return "\(components.day!) days ago"
            } else if (components.day! >= 1){
                if (numericDates){
                    return "1 day ago"
                } else {
                    return "Yesterday"
                }
            } else if (components.hour! >= 2) {
                return "\(components.hour!) hours ago"
            } else if (components.hour! >= 1){
                if (numericDates){
                    return "1 hour ago"
                } else {
                    return "An hour ago"
                }
            } else if (components.minute! >= 2) {
                return "\(components.minute!) minutes ago"
            } else if (components.minute! >= 1){
                if (numericDates){
                    return "1 minute ago"
                } else {
                    return "A minute ago"
                }
            } else if (components.second! >= 3) {
                return "\(components.second!) seconds ago"
            } else {
                return "Just now"
            }
            
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}


