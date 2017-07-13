//
//  ViewController.swift
//  Project1
//
//  Created by Hoang Nguyen on 7/12/17.
//  Copyright © 2017 Hoang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl")
            {
                pictures.append(item)
            }
        }
        print(pictures)

    }
    
    //Function 1 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pictures.count
    }
    
    //Function 2
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

