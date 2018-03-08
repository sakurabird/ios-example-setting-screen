//
//  SettingsNameTableViewController.swift
//  SettingsInAppExample
//
//  Created by Sakura on 2018/03/08.
//  Copyright © 2018年 Sakura. All rights reserved.
//

import UIKit

class SettingsNameTableViewController: UITableViewController, UITextFieldDelegate {

  @IBOutlet weak var nameTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    nameTextField.delegate = self

    // UserDefaultsの情報を画面にセットする
    if let name = UserDefaults.standard.value(forKey: "name") as? String {
      nameTextField.text = name
    }
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

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // keyboardを隠す
    textField.resignFirstResponder()
    // 入力された内容を保存する
    UserDefaults.standard.set(textField.text, forKey: "name")

    return true
  }
}
