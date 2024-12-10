//
//  FilterInsideListView.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//

import SwiftUI

struct FilterInsideListView: View {
    
    @StateObject var taskViewModel = TaskViewModel()
    
    @State private var selectedCategory: Category = .personal
    @State private var selectedTask: Task? = nil
    
    var body: some View {
        VStack {
            CategoryPickerView(selectedCategory: $selectedCategory)
            
            List(taskViewModel.tasks, selection: $selectedTask) { task in
                if task.category == selectedCategory {
                    TaskRow(task: task)
                        .tag(task)
                }
            }
        }
        .navigationTitle("Filter inside List")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FilterInsideListView()
}

