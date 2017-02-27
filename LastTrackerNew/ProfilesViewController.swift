//
//  ProfilesViewController.swift
//  LastTrackerNew
//
//  Created by Kristi Bostrom on 2/25/17.
//  Copyright © 2017 Kristi Bostrom. All rights reserved.
//

import UIKit

class ProfilesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let profileList:[String] = ["Person1", "Person2", "Person3"]
    let profileImages:[String] = ["User Male", "User Female", "User"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
        cell.textLabel?.text = profileList[indexPath.row]
        cell.imageView?.image = UIImage(named: profileImages[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(profileList[indexPath.row])")
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
