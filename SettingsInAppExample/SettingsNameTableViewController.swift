//
//  SettingsNameTableViewController.swift
//  SettingsInAppExample
//
//  Created by Sakura on 2018/03/08.
//  Copyright © 2018年 Sakura. All rights reserved.
//

import UIKit

class SettingsNameTableViewController: UITableViewController {

  @IBOutlet weak var nameTextField: UITextField!

  override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
  override func numberOfSections(in tableView: UITableView) -> Int {
    // セクションの数を返します
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // それぞれのセクション毎に何行のセルがあるかを返します
    return 1
  }
}
