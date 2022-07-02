//
//  Todo.swift
//  CRUD
//
//  Created by T Krobot on 25/6/22.
//

import Foundation

struct Todo: Identifiable {
    
    let id = UUID()
    
    var title: String
    var details: String = ""
    var isCompleted: Bool = false
}

