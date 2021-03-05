//
//  VocViewController.swift
//  translator
//
//  Created by Misha Causur on 03.03.2021.
//

import UIKit

class VocViewController: UIViewController {
    
    let navBar: UINavigationBar = {
        let bar = UINavigationBar()
        let navItem = UINavigationItem(title: "Словарь")
        bar.setItems([navItem], animated: false)
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    let tabBar: UITabBar = {
        let bar = UITabBar()
        bar.backgroundColor = UIColor.init(named: "SystemBlue")
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Словарь"
        setupView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    private func setupView(){
        view.backgroundColor = .white
        view.addSubview(navBar)
        view.addSubview(tabBar)
        navigationController?.navigationBar.isHidden = false
        
        let constraint = [
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 44),
        
            tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 49)]
        
        NSLayoutConstraint.activate(constraint)
    }
    
}
