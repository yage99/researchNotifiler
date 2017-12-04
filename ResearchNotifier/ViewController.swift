//
//  ViewController.swift
//  ResearchNotifier
//
//  Created by zhangya on 12/5/17.
//  Copyright © 2017 yage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var deviceTokenLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        deviceTokenLabel.text = GlobalData.getInstance().deviceToken?.base64EncodedString()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

