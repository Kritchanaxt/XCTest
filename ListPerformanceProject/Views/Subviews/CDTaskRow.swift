//
//  CDTaskRow.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 11/12/2567 BE.
//

import SwiftUI

struct CDTaskRow: View {
    let task: CDTask
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: task.isDone ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(task.isDone ? .green : .gray)
            VStack(alignment: .leading) {
                Text(task.title)
                Text(task.creationDate.formatted(date: .complete, time: .standard))
                    .font(.caption)
            }
        }
    }
}

#Preview {
    CDTaskRow(task: CDTask.example())
}
