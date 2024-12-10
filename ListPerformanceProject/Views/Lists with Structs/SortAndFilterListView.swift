//
//  SortAndFilterListView.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//

import SwiftUI

struct SortAndFilterListView: View {
    
    @StateObject var viewModel = SortTaskViewModel()
    @State private var selectedTask: Task? = nil
    
    var body: some View {
        VStack {
            NoteListSortingPickerView(sorting: $viewModel.selectedTaskSorting)
                .padding(.horizontal)
            CategoryPickerView(selectedCategory: $viewModel.selectedCategory)
            
            List(viewModel.filteredTasks,
                 selection: $selectedTask) {
                TaskRow(task: $0)
                    .tag($0)
            }
        }
        .navigationTitle("Optimized List View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        SortAndFilterListView()
    }
}
