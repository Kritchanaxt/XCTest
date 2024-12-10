//
//  FilterTaskViewModel.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 10/12/2567 BE.
//

import Foundation

class FilterTaskViewModel: ObservableObject {
    
    @Published var tasks: [Task]
    @Published var filteredTasks: [Task] = []
    
    @Published var selectedCategory: Category = .personal {
        didSet {
            filterTasks()
        }
    }
    
    init() {
        if let numberInt = UITestingHelper.stressTestNumber {
            tasks = Task.generateRandomTasks(count: numberInt)
        } else {
            // load tasks from local storage
            
            tasks = Task.generateRandomTasks(count: 100)
        }
        
        filterTasks()
    }
    
    func filterTasks() {
       filteredTasks = tasks.filter { $0.category == selectedCategory }
    }
}
