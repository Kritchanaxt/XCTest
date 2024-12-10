//
//  TaskViewModel.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 10/12/2567 BE.
//


import Foundation

class TaskViewModel: ObservableObject {
    
    @Published var tasks: [Task]
    
    init() {
        if let numberInt = UITestingHelper.stressTestNumber {
            tasks = Task.generateRandomTasks(count: numberInt)
        } else {
            // load tasks from local storage
            
            tasks = Task.generateRandomTasks(count: 100)
        }
    }
    
}

