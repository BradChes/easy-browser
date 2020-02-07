//
//  TableViewController.swift
//  easy-browser
//
//  Created by Bradley Chesworth on 07/02/2020.
//  Copyright © 2020 Brad Chesworth. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["apple.com", "google.com", "wikipedia.org"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Easy Browser"
        navigationController?.navigationBar.prefersLargeTitles = true

        websites.sort()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Webpage") as? ViewController {
            vc.websites = websites
            vc.selectedWebsite = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
