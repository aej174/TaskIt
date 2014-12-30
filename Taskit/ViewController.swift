//
//  ViewController.swift
//  Taskit
//
//  Created by Allan Jones on 12/22/14.
//  Copyright (c) 2014 Allan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var taskArray:[TaskModel] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*let task1:Dictionary<String, String> = ["task": "Study French", "subtask": "Verbs", "date": "01/15/2015"]
        let task2:Dictionary<String, String> = ["task": "Eat Dinner", "subtask": "Burgers", "date": "01/15/2015"]
        let task3:Dictionary<String, String> = ["task": "Gym", "subtask": "Leg day", "date": "01/15/2015"]
        taskArray = [task1, task2, task3]*/
        
        
        let task1 = TaskModel(task: "Study French", subTask: "Verbs", date: "01/14/2015")
        let task2 = TaskModel(task: "Eat dinner", subTask: "Burgers", date: "01/14/2015")
        let task3 = TaskModel(task: "Gym", subTask: "Leg day", date: "01/14/2015")
        
        taskArray = [task1, task2, TaskModel(task: "Gym", subTask: "Leg day", date: "01/14/2015")]
        
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        /*if segue.identifier == "showTaskDetail" {
            let detailVC: TaskDetailViewController = segue.destinationViewController as TaskDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow()
            let thisTask = taskArray[indexPath!.row]
            println(thisTask.task)
            detailVC.detailTaskModel = thisTask
           
            
        }*/
     
    }
    
    //UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let thisTask = taskArray[indexPath.row]
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        
        cell.taskLabel.text = thisTask.task
        cell.descriptionLabel.text = thisTask.subTask
        cell.dateLabel.text = thisTask.date
        
        /*cell.taskLabel.text = "Study French"
        cell.descriptionLabel.text = "verbs"
        cell.dateLabel.text = "01/10/14"*/

        
        return cell
    }
    
    //UITableViewDelegate
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        println(indexPath.row)
        
        performSegueWithIdentifier("showTaskDetail", sender: self)
        
    }


}

