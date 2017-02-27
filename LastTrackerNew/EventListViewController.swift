//
//  EventListViewController.swift
//  LastTrackerNew
//
//  Created by Kristi Bostrom on 2/25/17.
//  Copyright © 2017 Kristi Bostrom. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let eventList:[[String]] = [["Item1", "Item2"],
                                ["ItemA", "ItemB"]]
    let listHeaders:[String] = ["Category1", "Category2"]
    
    let itemDueDates:[[String]] = [["1/1/2017", "2/1/2017", "3/1/2017"],
                                   ["4/1/2017", "5/1/2017", "6/1/2017"]]
    let itemImages:[[String]] = [["Birthday", "Bird", "Pokemon"],
                                 ["Party Baloons", "Palm Tree", "Prize"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listHeaders.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listHeaders[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        cell.textLabel?.text = eventList[indexPath.section][indexPath.row]
        cell.detailTextLabel?.text = itemDueDates[indexPath.section][indexPath.row]
        cell.imageView?.image = UIImage(named: itemImages[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(eventList[indexPath.section][indexPath.row])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
