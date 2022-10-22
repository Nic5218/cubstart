//
//  ContentView.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

class Items: Identifiable {
    
    var itemName: String
    
    var quantity: String
    
    init(itemName: String, quantity: String) {
        
        self.itemName = itemName
        
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    @State var tempItemName: String = ""
    @State var tempQuantity: String = ""
    
    @State var list = [
        Items(itemName: "Bananas", quantity: "3"),
        Items(itemName: "Apples", quantity: "4"),
        Items(itemName: "Eggs", quantity: "12")
    ]
        
    var body: some View {
        NavigationView {
            List {
                ForEach(list) {listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
                
                HStack{
                    TextField("Item Name", text: $tempItemName)
                    Spacer()
                    TextField("Quantity", text: $tempQuantity)
                    
                } // end of HStack
                
                Button("Add New Item") {
                    if tempQuantity != "" || tempItemName != "" {
                        addItem()
                    }
                } // end of "add new item"
                .padding()
                .frame(alignment: .center)
                
                Button("Delete Item") {
                    if !list.isEmpty {
                        list.removeLast()
                    }
                } // end of "delete item"
                .padding()
                .frame(alignment: .center)
                
            }.navigationTitle("Shopping List")
        }
    } // end of body
    
    func addItem(){
        list.append(Items(itemName: tempItemName, quantity: tempQuantity))
        tempItemName = ""
        tempQuantity = ""
    }

} // end of contentView

