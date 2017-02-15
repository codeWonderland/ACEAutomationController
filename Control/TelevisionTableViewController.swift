//
//  TelevisionTableViewController.swift
//  Control
//
//  Created by Alice Easter on 2/14/17.
//  Copyright © 2017 Alice Easter. All rights reserved.
//

import UIKit

class TelevisionTableViewController: UITableViewController {

    var controls = ["Power" , "Input" , "Info" , "Menu" , "Up" , "Down" , "Left" , "Right" , "Exit" , "Volume Up" , "Volume Down" , "Mute" , "Video" , "HDMI" , "Zoom" , "Sleep" , "1" , "2" , "3" , "4" , "5", "6" , "7" , "8" , "9" , "0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controls.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let controlName = controls[indexPath.row]
        cell.textLabel?.text = controlName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Television Controls"
    }
}
