//
//  EditLoverController.swift
//  DataPassDemo
//
//  Created by 吳得人 on 2017/8/10.
//  Copyright © 2017年 吳得人. All rights reserved.
//

import UIKit

class MemberController: UITableViewController {

    var member: Member?
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var starLabel: UITextField!
    @IBOutlet weak var memberImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let member = member {
            navigationItem.title = member.name
            nameLabel.text = member.name
            starLabel.text = member.position
            memberImage.image = member.photo
        } else {
            navigationItem.title = "New Member"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editMemberController = segue.destination as? EditMemberController
        editMemberController?.member = self.member
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
