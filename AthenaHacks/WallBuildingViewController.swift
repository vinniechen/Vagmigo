//
//  WallBuildingViewController.swift
//  AthenaHacks
//
//  Created by Bema Kwadwo Bonsu on 4/8/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class WallBuildingViewController: UIViewController {
    var totalCount: Int = 0
    
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButton1(_ sender: Any) {
        button1.backgroundColor = UIColor.red
        isDone()
    }
    
    
    
    func isDone() -> Bool {
        return (totalCount == 20)
        print("done!")
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
