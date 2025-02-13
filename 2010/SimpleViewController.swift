//
//  SimpleViewController.swift
//
//  This Swift file demonstrates a basic view controller for an iOS app.
//  Though Swift was introduced in 2014, its design marked a turning point in mobile app development,
//  as the App Store and Google Play drove innovation. Prior to Swift, Objective-C was dominant.
//  This example simulates a simple interface with a welcome label and a button.
//

import UIKit

class SimpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        // Create and configure the welcome label
        let label = UILabel()
        label.text = "Welcome to the Mobile Era!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        // Create and configure the button
        let button = UIButton(type: .system)
        button.setTitle("Tap to Continue", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
        
        // Center the label and button using constraints
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func buttonTapped() {
        print("Button tapped! Proceeding to next screen...")
    }
}
