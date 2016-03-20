//
//  ViewController.swift
//  Counter
//
//  Created by ken on 3/20/16.
//  Copyright © 2016 ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var count = 0
    
    // MARK: Acions
    @IBAction func addCount(sender: AnyObject) {
        count++
        countLabel.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)
    }
    
    
    @IBAction func resetCount(sender: AnyObject) {
        count = 0;
        countLabel.text = String(count)
    }
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // display count number
        let countLabel = UILabel(frame: CGRectMake(75, 95, 225, 245))
        countLabel.center = CGPointMake(160, 284)
        countLabel.textAlignment = NSTextAlignment.Center
        countLabel.text = String(count)
        countLabel.font = countLabel.font.fontWithSize(50)
        countLabel.textColor = UIColor.blueColor()
        view.addSubview(countLabel)
        
        
        
        // custom count button
        let button = UIButton(type: .Custom) as UIButton
        button.frame = CGRectMake(60, 300, 240, 240)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.setImage(UIImage(named:"Blue-circle.jpg"), forState: .Normal)
        button.addTarget(self, action: "coutButtonPressed", forControlEvents: .TouchUpInside)
        button.setTitle("Count", forState: UIControlState.Normal)
        view.addSubview(button)
        
    }

    func coutButtonPressed() {
        count++
        print("count button pressed")
        print(count)
        
    }
    
    func resetButtonPressed() {
        count = 0
        print("reset button pressed")
        print(count)
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

