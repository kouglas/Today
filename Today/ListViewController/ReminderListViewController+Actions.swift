//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Kari Douglas on 12/4/24.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
