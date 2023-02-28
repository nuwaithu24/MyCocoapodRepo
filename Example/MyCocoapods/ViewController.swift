//
//  ViewController.swift
//  MyCocoapods
//
//  Created by nuwaithu24 on 02/27/2023.
//  Copyright (c) 2023 nuwaithu24. All rights reserved.
//

import UIKit
import MyCocoapods

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        // Do any additional setup after loading the view, typically from a nib.
        
                
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        var callFunc = callStoryBoard()
        callFunc.call(parentView: self,name: "Hello Nu Wai")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

