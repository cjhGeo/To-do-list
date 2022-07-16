//
//  Todo.swift
//  Todos v3
//
//  Created by YJ Soon on 9/7/22.
//

import Foundation

struct Todo: Identifiable, Codable {
    
    var id = UUID()
    var title: String
    var isCompleted = false
    
}
