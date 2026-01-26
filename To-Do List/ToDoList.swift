//
//  ToDoList.swift
//  To-Do List
//
//  Created by Maya Krishnan on 1/22/26.
//

import Foundation

@Observable
class ToDoList {
    var items = [ToDoItem(priority: "High", description: "Take out trash", dueDate: Date()),
                 ToDoItem(priority: "Medium", description: "Pick up clothes", dueDate: Date()),
                 ToDoItem(priority: "Low", description: "Eat a donut", dueDate: Date())]
 }
