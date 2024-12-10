//
//  NoteListSortingPickerView.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//


import SwiftUI

struct NoteListSortingPickerView: View {
    
    @Binding var sorting: TaskSorting
    
    var body: some View {
        Picker("Sort by", selection: $sorting.animation()) {
            ForEach(TaskSorting.allCases) { sorting in
                Text(sorting.title())
            }
        }
        .accessibilityIdentifier("Sort_Button")
        #if DEBUG
        .pickerStyle(SegmentedPickerStyle())
        #endif
    }
}

struct NoteListSortingPickerView_Previews: PreviewProvider {
    static var previews: some View {
        NoteListSortingPickerView(sorting: .constant(.creationDateAsc))
    }
}
