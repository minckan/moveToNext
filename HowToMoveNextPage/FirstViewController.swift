//
//  FirstViewController.swift
//  HowToMoveNextPage
//
//  Created by MZ01-MINCKAN on 2023/05/04.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel = UILabel()
    let backButton = UIButton(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

    }
    

    func configureUI() {
        view.backgroundColor = .white
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainLabel.text = "First View Controller"
        mainLabel.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(mainLabel)
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        backButton.setTitle("Back", for: .normal)
        backButton.addTarget(self, action: #selector(handleBackButton), for: .touchUpInside)
        backButton.backgroundColor = .systemBlue
        backButton.tintColor = .white
        view.addSubview(backButton)
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
    }
    
    @objc func handleBackButton() {
        dismiss(animated: true)
    }

}
