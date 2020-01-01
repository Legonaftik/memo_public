//
//  Created by Vladimir Pavlov on 11/03/2018.
//  Copyright © 2018 Vladimir Pavlov. All rights reserved.
//

import UIKit

protocol DatePickerViewControllerDelegate: class {
    func datePicker(_ datePicker: DatePickerViewController, didSelect date: Date)
}

final class DatePickerViewController: UIViewController {

    weak var delegate: DatePickerViewControllerDelegate?

    @IBOutlet private var datePicker: UIDatePicker!

    @IBAction private func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    @IBAction private func done(_ sender: UIBarButtonItem) {
        delegate?.datePicker(self, didSelect: datePicker.date)
        dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker.maximumDate = Date()
    }
}