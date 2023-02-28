//
//  VideoViewController.swift
//  MyCocoapods
//
//  Created by Nu Wai Thu on 2023/02/27.
//

import UIKit

public class VideoViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    var passName:String!
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green
        bgImage.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }

}
