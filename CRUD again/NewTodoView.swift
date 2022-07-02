//
//  NewTodoView.swift
//  CRUD
//
//  Created by T Krobot on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todo = ""
    @Binding var todos: [Todo]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Task name", text: $todo)
            
            Button("Save Todo") {
                
                todos.append(Todo(title: todo))
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
