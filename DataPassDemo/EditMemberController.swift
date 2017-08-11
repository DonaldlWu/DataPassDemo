//
//  EditMemberController.swift
//  DataPassDemo
//
//  Created by 吳得人 on 2017/8/11.
//  Copyright © 2017年 吳得人. All rights reserved.
//

import UIKit

class EditMemberController: UITableViewController {
    
    var member: Member?
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var positionLabel: UITextField!
    
    @IBAction func editDone(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let member = member else {
            return
        }
        nameLabel.text = member.name
        positionLabel.text = member.position
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
