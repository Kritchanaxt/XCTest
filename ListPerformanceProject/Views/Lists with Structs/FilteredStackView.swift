//
//  FilteredStackView.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//

import SwiftUI

struct FilteredStackView: View {
    @StateObject var taskViewModel = TaskViewModel()
    @State private var selectedCategory: Category = .personal
    
    var filteredTasks: [Task] {
        return taskViewModel.tasks.filter { $0.category == selectedCategory }
    }
    
    @State private var selectedTask: Task? = nil
    
    var body: some View {
        VStack {
            CategoryPickerView(selectedCategory: $selectedCategory)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    ForEach(filteredTasks) { task in
                        TaskRow(task: task)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                            .tag(task)
                    }
                }
            }
            .contentMargins(20)
        }
        .navigationTitle("Scrollview with VStack")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FilteredStackView()
}

