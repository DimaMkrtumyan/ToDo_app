//
//  Alerts.swift
//  ToDo App
//
//  Created by Dmitriy Mkrtumyan on 02.08.23.
//

import UIKit

final class Alerts {
    static func addAlert(vc: UIViewController, title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alert = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(alert)
        vc.present(alertController, animated: true)
    }
}
