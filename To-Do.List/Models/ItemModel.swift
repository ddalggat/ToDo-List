//
//  ItemModel.swift
//  To-Do.List
//
//  Created by Abdullabekov Dalgat on 8/12/23.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    var description: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, description: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.description = description
        self.isCompleted = isCompleted
    }
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, description: description, isCompleted: !isCompleted)
    }
}
