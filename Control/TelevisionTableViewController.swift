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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        let cellName = String(describing: cell?.textLabel?.text!)
        var scriptUrl = "https://google.com"
        
        switch cellName {
        case "Optional(\"Power\")":
            scriptUrl = "http://codewonderland.me:4567/televisionPower"
        case "Optional(\"Input\")":
            scriptUrl = "http://codewonderland.me:4567/televisionInput"
        case "Optional(\"Info\")":
            scriptUrl = "http://codewonderland.me:4567/televisionInfo"
        case "Optional(\"Menu\")":
            scriptUrl = "http://codewonderland.me:4567/televisionMenu"
        case "Optional(\"Volume Down\")":
            scriptUrl = "http://codewonderland.me:4567/televisionVolumeDown"
        case "Optional(\"Volume Up\")":
            scriptUrl = "http://codewonderland.me:4567/televisionVolumeUp"
        case "Optional(\"Up\")":
            scriptUrl = "http://codewonderland.me:4567/televisionUp"
        case "Optional(\"Down\")":
            scriptUrl = "http://codewonderland.me:4567/televisionDown"
        case "Optional(\"Left\")":
            scriptUrl = "http://codewonderland.me:4567/televisionLeft"
        case "Optional(\"Right\")":
            scriptUrl = "http://codewonderland.me:4567/televisionRight"
        case "Optional(\"Exit\")":
            scriptUrl = "http://codewonderland.me:4567/televisionExit"
        case "Optional(\"Mute\")":
            scriptUrl = "http://codewonderland.me:4567/televisionMute"
        case "Optional(\"Video\")":
            scriptUrl = "http://codewonderland.me:4567/televisionVideo"
        case "Optional(\"HDMI\")":
            scriptUrl = "http://codewonderland.me:4567/televisionHDMI"
        case "Optional(\"Volume Up\")":
            scriptUrl = "http://codewonderland.me:4567/televisionVolumeUp"
        case "Optional(\"Zoom\")":
            scriptUrl = "http://codewonderland.me:4567/televisionZoom"
        case "Optional(\"Sleep\")":
            scriptUrl = "http://codewonderland.me:4567/televisionSleep"
        case "Optional(\"1\")":
            scriptUrl = "http://codewonderland.me:4567/television1"
        case "Optional(\"2\")":
            scriptUrl = "http://codewonderland.me:4567/television2"
        case "Optional(\"3\")":
            scriptUrl = "http://codewonderland.me:4567/television3"
        case "Optional(\"4\")":
            scriptUrl = "http://codewonderland.me:4567/television4"
        case "Optional(\"5\")":
            scriptUrl = "http://codewonderland.me:4567/television5"
        case "Optional(\"6\")":
            scriptUrl = "http://codewonderland.me:4567/television6"
        case "Optional(\"7\")":
            scriptUrl = "http://codewonderland.me:4567/television7"
        case "Optional(\"8\")":
            scriptUrl = "http://codewonderland.me:4567/television8"
        case "Optional(\"9\")":
            scriptUrl = "http://codewonderland.me:4567/television9"
        case "Optional(\"0\")":
            scriptUrl = "http://codewonderland.me:4567/television0"
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
