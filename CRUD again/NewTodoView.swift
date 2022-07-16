//
//  NewTodoView.swift
//  Todos v3
//
//  Created by YJ Soon on 9/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoText = ""
    @Binding var todos: [Todo]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Please enter a name for your todo", text: $todoText)
            
            Button("Save") {
                todos.append(Todo(title: todoText))
                dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
