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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onPress(_ sender: Any) {
        print("press")
        beforeButton.isHidden = true
        beforeLabel.isHidden = true
        moveEggLeft()
        moveEggUp()
        
    }
    
    func moveEggLeft() {
        UIView.animate(withDuration: 0.7) {
            self.eggImage.center.x -= 80
            self.vagmigoImage.center.x -= 80
            self.eggImage.center.y -= 45
            self.vagmigoImage.center.y -= 45
        }
    }
    
    func moveEggUp() {
        UIView.animate(withDuration: 0.7) {
            self.eggImage.center.y -= 200
            self.vagmigoImage.center.y -= 200
            
            self.eggImage.center.x += 100
            self.vagmigoImage.center.x += 100
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
