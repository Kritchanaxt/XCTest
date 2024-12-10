//
//  NSPredicate+Helper.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 10/12/2567 BE.
//

import Foundation

extension NSPredicate {
    static let all = NSPredicate(format: "TRUEPREDICATE")
    static let none = NSPredicate(format: "FALSEPREDICATE")
    
    static func predicate(for category: Category) -> NSPredicate {
        NSPredicate(format: "category_ == %@", category.rawValue as CVarArg)
    }
}
