//
//  TodoDetailView.swift
//  CRUD
//
//  Created by T Krobot on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    @State var todoOpacity: Double = 100
    @State var doneTodo = false
    @State var doneTodoRotation: Angle = .zero
    
    var body: some View {
        VStack {
            ZStack {
            Text(todo.title)
                .strikethrough(todo.isCompleted ? true : false)
                .opacity(todoOpacity)
                .padding()
                
                if doneTodo {
                    Text(todo.title)
                        .onAppear {
                            withAnimation(.easeOut(duration: 1).delay(3)) {
                                doneTodoRotation = .degrees(720)
                            }
                        }
                         
                }
                
            }
            
            Button {
                    todo.isCompleted.toggle()
                withAnimation(.easeInOut(duration: 1.5).delay(1)) {
                    todoOpacity = 0
                }
                doneTodo = true
            } label: {
                Text("Mark as \(todo.isCompleted ? "incomplete" : "complete")")
            }
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat")))
    }
}
