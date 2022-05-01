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
    
    let AmiboList = ["Zenaida", "Sobaka", "sherst", "govno", "pidr"]
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
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
        return AmiboList.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let name = AmiboList[indexPath.row]
        
        cell.textLabel?.text = name
        return cell
    }

}


