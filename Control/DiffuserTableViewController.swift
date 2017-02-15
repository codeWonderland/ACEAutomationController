//
//  DiffuserTableViewController.swift
//  Control
//
//  Created by Alice Easter on 2/14/17.
//  Copyright © 2017 Alice Easter. All rights reserved.
//

import UIKit

class DiffuserTableViewController: UITableViewController {

    var controls = ["Power" , "Music" , "Lights" , "Lights Cycle" , "Volume Down" , "Volume Up"]
    
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
        return "Diffuser Controls"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        let cellName = String(describing: cell?.textLabel?.text!)
        var scriptUrl = "https://google.com"
        
        switch cellName {
        case "Optional(\"Power\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserPower"
        case "Optional(\"Music\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserPlay"
        case "Optional(\"Lights\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserLights"
        case "Optional(\"Lights Cycle\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserLightCycle"
        case "Optional(\"Volume Down\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserVolumeDown"
        case "Optional(\"Volume Up\")":
            scriptUrl = "http://codewonderland.me:4567/diffuserVolumeUp"
        default:
            print("Failure in Switch Statement")
        
        }
    
        let myUrl = NSURL(string: scriptUrl)
        let request = NSMutableURLRequest(url:myUrl! as URL)
        request.httpMethod = "GET"
        
        // Excute HTTP Request
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            // Check for error
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // Print out response string
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(responseString)")
        }
        
        task.resume()
    }
}
