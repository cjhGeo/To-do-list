//
//  TodoDetailView.swift
//  Todos v3
//
//  Created by YJ Soon on 9/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            TextField("Enter your todo title here", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "in" : "")complete")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(todo.isCompleted ? .red : .green)
                    .foregroundColor(.white)
                    .padding()
            }
            Spacer()
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat")))
    }
}
