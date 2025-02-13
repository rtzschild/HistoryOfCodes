//
//  IoTControlViewController.swift
//
//  This Swift file demonstrates a basic view controller for an iOS app
//  that simulates control over an IoT device (e.g., a smart light).
//  Swift's official release by Apple revolutionized iOS development,
//  enabling modern and efficient mobile app interfaces.
//
import UIKit

class IoTControlViewController: UIViewController {

    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Device is OFF"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let toggleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Toggle Device", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var deviceOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(statusLabel)
        view.addSubview(toggleButton)
        
        // Center the label and button using Auto Layout
        NSLayoutConstraint.activate([
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            toggleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toggleButton.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 20)
        ])
        
        toggleButton.addTarget(self, action: #selector(toggleDevice), for: .touchUpInside)
    }
    
    @objc func toggleDevice() {
        deviceOn.toggle()
        statusLabel.text = deviceOn ? "Device is ON" : "Device is OFF"
        // Simulate sending a command to an IoT device.
        print("Device toggled. Current state: \(deviceOn ? "ON" : "OFF")")
    }
}
