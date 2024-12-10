//
//  Date+Helper.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 10/12/2567 BE.
//

import Foundation

extension Date {
    static func generateRandomDate(from initialDate: Date?, to endDate: Date) -> Date? {
        guard let initialDate else { return nil }
        
        let dateRange = endDate.timeIntervalSince(initialDate)
        
        guard dateRange >= 0 else { return nil } // Ensure the end date is after the start date
        
        let randomInterval = TimeInterval.random(in: 0..<dateRange)
        return Date(timeInterval: randomInterval, since: initialDate)
    }
    
    func goBack(days: Int = 100) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.day = -days // Going back in time
        let startDate = Calendar.current.date(byAdding: dateComponents, to: self)
        return startDate
    }
}

