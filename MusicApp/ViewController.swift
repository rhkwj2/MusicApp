//
//  ViewController.swift
//  MusicApp
//
//  Created by Kim Yeon Jeong on 2019/12/18.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var music = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        music = ["Hi","My","name","is","Kim"]
        self.tableView.register(MusicTableViewCell.self, forCellReuseIdentifier: "musicTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicTableViewCell") as! MusicTableViewCell
        
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }


}

