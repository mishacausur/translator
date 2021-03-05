//
//  MainViewController.swift
//  translator
//
//  Created by Misha Causur on 03.03.2021.
//

import UIKit

class MainViewController: UIViewController {

    let logoView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "X - 5-1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "SystemBlue")
        button.layer.cornerRadius = 22
        button.setTitle("Начать учить", for: .normal)
        button.addTarget(self, action: #selector(pushVocabulary), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func pushVocabulary(){
        let vc = VocViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }

    private func setupView(){
        view.addSubview(logoView)
        view.addSubview(welcomeLabel)
        view.addSubview(loginButton)
        
        navigationController?.navigationBar.isHidden = true
        let constraints = [
            logoView.topAnchor.constraint(equalTo: view.topAnchor),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            logoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 44),
            loginButton.widthAnchor.constraint(equalToConstant: 300)]
        
        NSLayoutConstraint.activate(constraints)
    }

}
