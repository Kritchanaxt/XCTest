//
//  CategoryPickerView.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//

import SwiftUI

struct CategoryPickerView: View {
    @Binding var selectedCategory: Category
    
    var body: some View {
        Picker("Category", selection: $selectedCategory) {
            ForEach(Category.allCases, id: \.self) { category in
                Text(category.rawValue).tag(category)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(.horizontal)
    }
}

#Preview {
    CategoryPickerView(selectedCategory: .constant(.personal))
}
