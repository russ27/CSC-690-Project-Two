//
//  SecondViewController.swift
//  myToDo
//
//  Created by Russelle Pineda on 11/5/18.
//  Copyright © 2018 Russelle Pineda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var inputTask: UITextField!
    
    
    @IBAction func addTask(_ sender: AnyObject) {
        
        if(inputTask.text != "")
        {
            toDoList.append(inputTask.text!)
            
            inputTask.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

