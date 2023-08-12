//
//  ListViewModel.swift
//  To-Do.List
//
//  Created by Abdullabekov Dalgat on 8/13/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "itemsList"
    
    init() {
        getItems()
    }
    
    func getItems() {
        
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}