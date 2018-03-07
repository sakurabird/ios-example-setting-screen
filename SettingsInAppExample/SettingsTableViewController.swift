//
//  SettingsTableViewController.swift
//  SettingsInAppExample
//
//  Created by Sakura on 2018/03/07.
//  Copyright © 2018年 Sakura. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var versionLabel: UILabel!

  override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    // セクションの数を返します
    return 2
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // それぞれのセクション毎に何行のセルがあるかを返します
    switch section {
    case 0: // 「設定」のセクション
      return 1
    case 1: // 「その他」のセクション
      return 2
    default: // ここが実行されることはないはず
      return 0
    }
  }
}
