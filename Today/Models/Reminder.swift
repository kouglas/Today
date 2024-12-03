//
//  Reminder.swift
//  Today
//
//  Created by Kari Douglas on 11/29/24.
//

import Foundation

struct Reminder: Identifiable {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
    var id: String = UUID().uuidString
    
    //    init(title: String, dueDate: Date) {
    //        self.title = title
    //        self.dueDate = dueDate
    //    }
    
    /*
     You don’t need to create an initializer for these properties.
     The Swift compiler automatically provides each structure with
     a memberwise initializer—even if the structure has stored
     properties without default values.
     
     */
    
}


/*
 The #if DEBUG flag is a compilation directive that prevents
 the enclosed code from compiling when you build the app for
 release. You can use this flag for testing code in debug builds—or
 for providing sample test data, like you’ll do in the next step.
 */

#if DEBUG
extension Reminder {
    static var sampleData = [
        Reminder(
            title: "Submit reimbursement report", dueDate: Date().addingTimeInterval(800.0),
            notes: "Don't forget about taxi receipts"),
        Reminder(
            title: "Code review", dueDate: Date().addingTimeInterval(14000.0),
            notes: "Check tech specs in shared folder", isComplete: true),
        Reminder(
            title: "Pick up new contacts", dueDate: Date().addingTimeInterval(24000.0),
            notes: "Optometrist closes at 6:00PM"),
        Reminder(
            title: "Add notes to retrospective", dueDate: Date().addingTimeInterval(3200.0),
            notes: "Collaborate with project manager", isComplete: true),
        Reminder(
            title: "Interview new project manager candidate",
            dueDate: Date().addingTimeInterval(60000.0), notes: "Review portfolio"),
        Reminder(
            title: "Mock up onboarding experience", dueDate: Date().addingTimeInterval(72000.0),
            notes: "Think different"),
        Reminder(
            title: "Review usage analytics", dueDate: Date().addingTimeInterval(83000.0),
            notes: "Discuss trends with management"),
        Reminder(
            title: "Confirm group reservation", dueDate: Date().addingTimeInterval(92500.0),
            notes: "Ask about space heaters"),
        Reminder(
            title: "Add beta testers to TestFlight", dueDate: Date().addingTimeInterval(101000.0),
            notes: "v0.9 out on Friday")
    ]
}
#endif
