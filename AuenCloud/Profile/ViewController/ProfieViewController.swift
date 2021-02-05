//
//  ProfieViewController.swift
//  AuenCloud
//
//  Created by Admin on 12/3/20.
//

import Foundation

import UIKit

class ProfileViewController: ScrollViewController {
    //MARK: - Properties
  
//    lazy var rightBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "Time Circle"), style: .plain, target: self, action: #selector(goToHistory))
//    lazy var leftBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "Search"), style: .plain, target: self, action: #selector(getSearch))

    
  
    lazy var refreshControl = UIRefreshControl()
    //MARK: - Initialization
    
    //MARK: - Lifycycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        setupView()
        //tableView.isHidden = true
        //searchTextField.textField.delegate = self
        

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        navigationItem.rightBarButtonItem = rightBarButton
//        navigationItem.leftBarButtonItem = leftBarButton
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.9725490196, blue: 0.9843137255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = .mainColor
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = false

    }
    //MARK: - Setup Functions
    
    private func setupView() -> Void  {
   
    }

    //    MARK: - Parse functions
    


    //    MARK: - Objc functions
   
}
//MARK: - TableView Delegate
