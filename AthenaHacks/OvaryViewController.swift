//
//  OvaryViewController.swift
//  AthenaHacks
//
//  Created by Vinnie Chen on 4/8/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class OvaryViewController: UIViewController {
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        randomHormoneDrop()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateHormone() {
        
    }
    
    func randomHormoneDrop() {
        
        let hormone = UIImage(named: "hormone")
        
        while (score < 10) {
            
            let imageView = UIImageView(image: hormone)
            
            imageView.frame = CGRect(x: 50, y: 200, width: 15, height: 15)
            view.addSubview(imageView)
            
            score += 1
            
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
