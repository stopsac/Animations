//
//  ViewController.swift
//  Animations
//
//  Created by Bono on 11/10/15.
//  Copyright © 2015 Engene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animate(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.animatingView.backgroundColor = UIColor.orangeColor()
            
            let center = CGPoint(x: 150, y: 150)
            let size = CGSize(width: 200, height: 200)
            self.animatingView.frame = CGRect(origin: center, size: size)
            
            }, completion: nil)
        
    }

}

