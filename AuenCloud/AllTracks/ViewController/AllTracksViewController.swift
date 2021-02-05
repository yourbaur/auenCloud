//
//  AllTracksViewController.swift
//  AuenCloud
//
//  Created by Admin on 12/4/20.
//

import Foundation

import UIKit

class AllTracksViewController: UIViewController {
    //MARK: - Properties
    lazy var rightBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "Time Circle"), style: .plain, target: self, action: #selector(goToHistory))
//    lazy var leftBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "Search"), style: .plain, target: self, action: #selector(getSearch))
    lazy var tableView: UITableView = {
        let tableview = UITableView()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = .none
        tableview.register(TranslateResultHeaderView.self, forHeaderFooterViewReuseIdentifier: "headerViewId")
        tableview.register(WordsTableViewCell.self, forCellReuseIdentifier: "translateCell")
        tableview.refreshControl = refreshControl
        
        return tableview
    }()
    

  
    
    lazy var refreshControl = UIRefreshControl()
    //MARK: - Initialization
    
    //MARK: - Lifycycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = false
        setupView()
    }
    
    private func setupView() -> Void {
        addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(50)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Cохраненные"
        navigationItem.rightBarButtonItem = rightBarButton
        navigationController?.navigationBar.barTintColor = .mainColor
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        
//        navigationItem.leftBarButtonItem = leftBarButton
        //navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.478, green: 0.694, blue: 0.863, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = false

    }
    //MARK: - Setup Functions
    
 
    //    MARK: - Parse functions
    


    //    MARK: - Objc functions
   
}
//MARK: - TableView Delegate
extension AllTracksViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "translateCell", for: indexPath) as! WordsTableViewCell
//            cell.configuration(data: latestNewList[indexPath.row])
            cell.dateLabel.text = "Перейти к карточке слова"
            cell.defLabel.text = "Привычка; обыкновение; обычай"
            cell.titleLabel.text = "Habit"
            cell.langLabel.text = "english"
            
            return cell
       
    }
    
  
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerViewId") as! TranslateResultHeaderView
        
        headerView.contentView.backgroundColor = .white
        headerView.backgroundColor = .clear
        headerView.actionEnabled(false)
        headerView.titleLabel.font = .getMullerBoldFont(on: 18)
        headerView.titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(15)

        }
        
        let headerTile = "10 сохраненных"
        
        headerView.titleLabel.text = headerTile
        return headerView
    }
}
