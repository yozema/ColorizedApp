//
//  StartViewController.swift
//  ColorizedApp
//
//  Created by Ilya Zemskov on 17.03.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(_ color: UIColor)
}

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.currentColor = view.backgroundColor
    }
    
}

// MARK: - ColorDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

