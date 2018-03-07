//
//  SettingsTableViewController.swift
//  SettingsInAppExample
//
//  Created by Sakura on 2018/03/07.
//  Copyright © 2018年 Sakura. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

  @IBOutlet weak var nameLabel: UITableViewCell!
  @IBOutlet weak var versionLabel: UITableViewCell!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
