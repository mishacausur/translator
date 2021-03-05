//
//  NewWordViewController.swift
//  translator
//
//  Created by Misha Causur on 03.03.2021.
//

import UIKit

class NewWordViewController: UIViewController {

    let backgroundImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "SystemBlue")
        button.layer.cornerRadius = 22
        button.setTitle("Начать учить", for: .normal)
//        button.addTarget(self, action: #selector(pushVocabulary), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(loginButton)
        setupViews()
    }
    
    private func setupViews() {
        let constraints = [
            loginButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
            
        ]
        NSLayoutConstraint.activate(constraints)
    }
    



}
