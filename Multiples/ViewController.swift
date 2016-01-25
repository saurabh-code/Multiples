//
//  ViewController.swift
//  Multiples
//
//  Created by saurabh kumar on 1/25/16.
//  Copyright © 2016 saurabh kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var startText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPressPlay(sender: UIButton) {
    }

}

