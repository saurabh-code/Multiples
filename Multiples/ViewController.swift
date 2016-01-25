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
    
    var multipler: Int = 0
    var currentCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPressPlay(sender: UIButton) {
        if startText.text != nil && startText.text != "" {
            multipler = Int(startText.text!)!
            reset(false)
        }
//        print(multipler)
    }
    
    @IBAction func onPressAdd(sender: UIButton) {
        var temp: Int = currentCount + multipler;
        display.text = "\(currentCount) + \(multipler) = \(temp)"
        currentCount = temp
        
        if (currentCount / multipler == 10) {
            reset(true)
        }
    }
    
    func reset (flag: Bool) {
        logo.hidden = !flag
        startText.hidden = !flag
        playButton.hidden = !flag
        display.hidden = flag
        addButton.hidden = flag
        
        currentCount = 0
    }
}

