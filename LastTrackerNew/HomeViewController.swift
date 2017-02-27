//
//  ViewController.swift
//  LastTrackerNew
//
//  Created by Kristi Bostrom on 2/16/17.
//  Copyright © 2017 Kristi Bostrom. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let homeHeaders:[String] = ["Section 1", "Section 2"]
    let homeList:[[String]] = [["Item1", "Item2", "Item3"],
                               ["ItemA", "ItemB", "ItemC"]]
    let itemDueDates:[[String]] = [["1/1/2017", "2/1/2017", "3/1/2017"],
                               ["4/1/2017", "5/1/2017", "6/1/2017"]]
    let itemImages:[[String]] = [["Birthday", "Bird", "Pokemon"],
                                ["Party Baloons", "Palm Tree", "Prize"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addEvent(_ sender: Any) {
    }
    
    
    @IBAction func switchProfile(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeList[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return homeHeaders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath)
        cell.textLabel?.text = homeList[indexPath.section][indexPath.row]
        cell.detailTextLabel?.text = itemDueDates[indexPath.section][indexPath.row]
        cell.imageView?.image = UIImage(named: itemImages[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return homeHeaders[section]
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("\(homeList[indexPath.section][indexPath.row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

