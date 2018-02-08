//
//  OvulationViewController.swift
//  AthenaHacks
//
//  Created by Vinnie Chen on 4/8/17.
//  Copyright © 2017 Vinnie Chen. All rights reserved.
//

import UIKit

class OvulationViewController: UIViewController {

    @IBOutlet weak var vagmigoImage: UIImageView!
    @IBOutlet weak var beforeButton: UIButton!
    @IBOutlet weak var beforeLabel: UILabel!
    @IBOutlet weak var eggImage: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isHidden = true
        

        // Do any additional setup after loading the view.
    }

    @IBAction func onPress(_ sender: Any) {
        print("press")
        beforeButton.isHidden = true
        beforeLabel.isHidden = true
        continueButton.isHidden = false
        infoLabel.isHidden = true
        moveEgg()
    }
    
    
    func moveEgg() {
        UIView.animate(withDuration: 0.7) {
            self.eggImage.center.x -= 80
            self.vagmigoImage.center.x -= 80
            self.eggImage.center.y -= 45
            self.vagmigoImage.center.y -= 45
        }
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
