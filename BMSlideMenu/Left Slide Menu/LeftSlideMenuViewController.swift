//
//  LeftSlideMenuViewController.swift
//  BMSlideMenu
//
//  Created by Qinnovation on 12/13/17.
//  Copyright © 2017 Barath Mohan. All rights reserved.
//

import UIKit

class LeftSlideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var leftMenuTableView:UITableView!
    
    let menuItemsArray = ["Home","Inbox","News Feeds","About US","Logout"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.leftMenuTableView.tableFooterView = UIView()
        self.leftMenuTableView.delegate = self
        self.leftMenuTableView.dataSource = self
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width/2
        profileImageView.clipsToBounds = true
    }
    
    //Table View Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leftMenuItemCell", for: indexPath) as! LeftSlideMenuTableViewCell
        cell.menuTitle.text = menuItemsArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.darkGray
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.clear
    }
}
