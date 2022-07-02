//
//  NewTodoView.swift
//  CRUD
//
//  Created by T Krobot on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todo = ""
    @State var todoDescription = ""
    @Binding var todos: [Todo]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Task", text: $todo)
            
            TextField("Task description (Optional)", text: $todoDescription)
            
            Button("Save Todo") {
                
                todos.append(Todo(title: todo, details: todoDescription))
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
