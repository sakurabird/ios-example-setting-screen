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

    // UserDefaultsの変更を監視する
    NotificationCenter.default.addObserver(self, selector: #selector(userDefaultsDidChange),
                                           name: UserDefaults.didChangeNotification, object: nil)

    // UserDefaultsの情報を画面にセットする
    if let name = UserDefaults.standard.value(forKey: "name") as? String {
      nameLabel.text = name
    }

    // アプリのバージョン
    if let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
      versionLabel.text = version
    }
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

  @objc func userDefaultsDidChange(_ notification: Notification) {
    // UserDefaultsの変更があったので画面の情報を更新する
    if let name = UserDefaults.standard.value(forKey: "name") as? String {
      nameLabel.text = name
    }
  }

  deinit {
    // UserDefaultsの変更の監視を解除する
    NotificationCenter.default.removeObserver(self, name: UserDefaults.didChangeNotification, object: nil)
  }
}
