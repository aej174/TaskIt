//
//  TaskDetailViewController.swift
//  Taskit
//
//  Created by Allan Jones on 12/23/14.
//  Copyright (c) 2014 Allan Jones. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        println(self.detailTaskModel.task)
    }
    

}
