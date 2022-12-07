//
//  ColorViewController.swift
//  homeWork2.4
//
//  Created by Алексей Исаев on 06.12.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    
    func setNewColor(color: UIColor)
}

class ColorViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.backgroundColor = view.backgroundColor
    }

}

// MARK: - SettingsViewControllerDelegate
extension ColorViewController: SettingsViewControllerDelegate {
    func setNewColor(color: UIColor) {
        view.backgroundColor = color
    }
}

