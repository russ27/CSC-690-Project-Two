//
//  FirstViewController.swift
//  myToDo
//
//  Created by Russelle Pineda on 11/5/18.
//  Copyright © 2018 Russelle Pineda. All rights reserved.
//

import UIKit

var toDoList: [String] = []

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(toDoList.count)
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let protoCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "protoCell")
        
        protoCell.textLabel?.text = toDoList[indexPath.row]
        
        return protoCell
    }
    
    
    //delete by swiping left
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            toDoList.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

