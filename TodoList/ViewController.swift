//
//  ViewController.swift
//  TodoList
//
//  Created by 田中駿一郎 on 2018/06/11.
//  Copyright © 2018年 田中駿一郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
 {

    @IBOutlet weak var TableView: UITableView!
    
    let todos = ["トイレ", "洗濯", "出社", "帰る", "寝る"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Todo", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = todos[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

