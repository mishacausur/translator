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
        let addButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
        navItem.rightBarButtonItem = addButton
        bar.setItems([navItem], animated: false)
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.backgroundColor = .white
        return bar
    }()
    

    private lazy var vocCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collection.dataSource = self
        collection.delegate = self
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellID")
        collection.backgroundColor = .white
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()

//    private let navItem = UINavigationItem()

    
    let tabBar: UITabBar = {
        let bar = UITabBar()
        bar.backgroundColor = UIColor.init(named: "SystemBlue")
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Словарь"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
        
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

        view.addSubview(vocCollectionView)
        navigationController?.navigationBar.isHidden = false

        navigationController?.navigationBar.isHidden = true

        
        let constraint = [
            navBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 44),
        
            tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 49),
        
            vocCollectionView.topAnchor.constraint(equalTo: navBar.bottomAnchor),
            vocCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vocCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vocCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)]
        
       
        NSLayoutConstraint.activate(constraint)
    }
    
}

extension VocViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = vocCollectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath)
        return cell
    }
    
    
}
