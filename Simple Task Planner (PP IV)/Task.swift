//
//  Task.swift
//  Simple Task Planner (PP IV)
//
//  Created by Max Beckmann on 30.05.24.
//

import Foundation
import SwiftData
import SwiftUI

enum Priority: String, CaseIterable, Codable {
    case none
    case low
    case medium
    case high
}

enum Status: String, CaseIterable, Codable {
    case pending
    case ongoing
    case paused
    case done
    
    func color() -> Color {
        switch self {
        case .pending:
            return Color.gray
        case .ongoing:
            return Color.blue
        case .paused:
            return Color.orange
        case .done:
            return Color.green
        }
    }
}

enum TShirtSize: String, CaseIterable, Codable {
    case XS
    case S
    case M
    case L
    case XL
}

@Model
class Task {
    @Attribute(.unique) var identifier: String
    var title: String
    var desc: String
    var priority: Priority
    var dueOn: Date
    var expenditure: TShirtSize
    var status: Status = Status.pending
    
    init(identifier: String, title: String, desc: String, priority: Priority, dueOn: Date, expenditure: TShirtSize) {
        self.identifier = identifier
        self.title = title
        self.desc = desc
        self.priority = priority
        self.dueOn = dueOn
        self.expenditure = expenditure
    }
}
