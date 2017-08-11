//
//  StartTableViewController.swift
//  DataPassDemo
//
//  Created by 吳得人 on 2017/8/10.
//  Copyright © 2017年 吳得人. All rights reserved.
//

import UIKit

class StartTableViewController: UITableViewController {


    var members = [Member]()
    
    @IBOutlet var memberLabel: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Pied Piper"
        members.append(Member(name: "Richard Hendricks", position: "CEO", photo: #imageLiteral(resourceName: "richard")))
        members.append(Member(name: "Monica Hall", position: "Investors", photo: #imageLiteral(resourceName: "Monica")))
        members.append(Member(name: "Bertram Gilfoyle", position: "Engineer", photo: #imageLiteral(resourceName: "gilfoyle")))
        
        for (i, memberLabel) in memberLabel.enumerated() {
            memberLabel.text = members[i].name
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let memberController = segue.destination as? MemberController
        if let indexPath = tableView.indexPathForSelectedRow {
            memberController?.member = members[indexPath.row]
        }
    }

}

struct Member {
    var name: String
    var position: String
    var photo: UIImage
}
