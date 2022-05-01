//
//  ViewController.swift
//  TheListOfСharacter
//
//  Created by viktor on 30.04.2022.
//

import UIKit

class AmiboListVC: UIViewController {
    
    let tableView = UITableView ()
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        
        tableView.dataSource = self
        
        setupView ()
    }
    
    //MARK: - Setup view
    
    func setupView () {
        //always add the UIview FIRST before setting constarains
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
}

// MARK: - UiTableViewDataSoucrce

extension AmiboListVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = UITableViewCell ()
        cell.textLabel?.text = "Hey! listen!"
        return cell
    }

}


