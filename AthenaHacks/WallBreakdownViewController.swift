//
//  WallBreakdownViewController.swift
//  AthenaHacks
//
//  Created by Bema Kwadwo Bonsu on 4/8/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class WallBreakdownViewController: UIViewController {
    @IBOutlet weak var presentLabel: UILabel!

    @IBOutlet weak var brick1: UIButton!
    @IBOutlet weak var brick2: UIButton!
    @IBOutlet weak var brick3: UIButton!
    @IBOutlet weak var brick4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBrick1(_ sender: Any) {
        UIView.animate(withDuration: 0.7) {
            self.brick1.center.y += 450
            self.brick1.alpha = 0
        }
    }
    
    @IBAction func onBrick2(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.brick2.center.y += 450
            self.brick2.alpha = 0
        }
    }
    
    @IBAction func onBrick3(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.brick3.center.y += 450
            self.brick3.alpha = 0
        }
    }
    

    @IBAction func onBrick4(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.brick4.center.y += 450
            self.brick4.alpha = 0
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
