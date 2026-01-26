//
//  AddItemView.swift
//  To-Do List
//
//  Created by Maya Krishnan on 1/26/26.
//

import SwiftUI

struct AddItemView: View {
    @Environment(ToDoList.self) var toDoList
    @Environment(\.dismiss) var dismiss
    static let priorities = ["High", "Medium", "Low"]
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    var body: some View {
        NavigationView {
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorities, id: \.self) { priority in
                        Text(priority)
                    }
                }
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
            .navigationBarTitle("Add New To-Do Item", displayMode: .inline)
            .navigationBarItems(trailing: Button("Save") {
                if priority.count > 0, description.count > 0 {
                    let item = ToDoItem(priority: priority, description: description, dueDate: dueDate)
                    toDoList.items.append(item)
                    dismiss()
                }
            })
        }
    }
}
