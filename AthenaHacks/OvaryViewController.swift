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
    
    @IBOutlet weak var gaugeLabel: UILabel!

    @IBOutlet weak var purple1: UIImageView!
    @IBOutlet weak var purple2: UIImageView!
    @IBOutlet weak var purple3: UIImageView!
    @IBOutlet weak var purple4: UIImageView!
    @IBOutlet weak var green1: UIImageView!
    @IBOutlet weak var green2: UIImageView!
    @IBOutlet weak var green3: UIImageView!
    @IBOutlet weak var green4: UIImageView!
    @IBOutlet weak var blue1: UIImageView!
    @IBOutlet weak var blue2: UIImageView!
    @IBOutlet weak var blue3: UIImageView!
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var presentbutton: UIButton!
    @IBOutlet weak var finishButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        purple1.isHidden = true
        purple2.isHidden = true
        purple3.isHidden = true
        purple4.isHidden = true
        green4.isHidden = true
        green3.isHidden = true
        green2.isHidden = true
        green1.isHidden = true
        blue3.isHidden = true
        blue2.isHidden = true
        blue1.isHidden = true
        finishButton.isHidden = true
        
        
        //randomHormoneDrop()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPresent(_ sender: Any) {
        presentLabel.isHidden = true
        presentbutton.isHidden = true
    }
    @IBAction func onPurple1(_ sender: Any) {
        
        if (purple1.isHidden) {
            purple1.isHidden = false
            score += 4
            checkWin()
        }
        else {
            purple1.isHidden = true
            score -= 4
            checkWin()
        }
    }
    @IBAction func onPurple2(_ sender: Any) {
        if (purple2.isHidden) {
            purple2.isHidden = false
            score += 4
            checkWin()
        }
        else {
            purple2.isHidden = true
            score -= 4
            checkWin()
        }
    }
    @IBAction func onPurple3(_ sender: Any) {
        if (purple3.isHidden) {
            purple3.isHidden = false
            score += 4
            checkWin()
        }
        else {
            purple3.isHidden = true
            score -= 4
            checkWin()
        }
    }
    @IBAction func onPurple4(_ sender: Any) {
        if (purple4.isHidden) {
            purple4.isHidden = false
            score += 4
            checkWin()
        }
        else {
            purple4.isHidden = true
            score -= 4
            checkWin()
        }
    }
    
    
    @IBAction func onGreen1(_ sender: Any) {
        if (green1.isHidden) {
            green1.isHidden = false
            score += 1
            checkWin()
        }
        else {
            green1.isHidden = true
            score -= 1
            checkWin()
        }
    }
    @IBAction func onGreen2(_ sender: Any) {
        if (green2.isHidden) {
            green2.isHidden = false
            score += 1
            checkWin()
        }
        else {
            green2.isHidden = true
            score -= 1
            checkWin()
        }
    }
    @IBAction func onGreen3(_ sender: Any) {
        if (green3.isHidden) {
            green3.isHidden = false
            score += 1
            checkWin()
        }
        else {
            green3.isHidden = true
            score -= 1
            checkWin()
        }
    }
    @IBAction func onGreen4(_ sender: Any) {
        if (green4.isHidden) {
            green4.isHidden = false
            score += 1
            checkWin()
        }
        else {
            green4.isHidden = true
            score -= 1
            checkWin()
        }
    }
    
    @IBAction func onBlue1(_ sender: Any) {
        if (blue1.isHidden) {
            blue1.isHidden = false
            score += 2
            checkWin()
        }
        else {
            blue1.isHidden = true
            score -= 2
            checkWin()
        }
    }
    @IBAction func onBlue2(_ sender: Any) {
        if (blue2.isHidden) {
            blue2.isHidden = false
            score += 2
            checkWin()
        }
        else {
            blue2.isHidden = true
            score -= 2
            checkWin()
        }
    }
    @IBAction func onBlue3(_ sender: Any) {
        if (blue3.isHidden) {
            blue3.isHidden = false
            score += 2
            checkWin()
        }
        else {
            blue3.isHidden = true
            score -= 2
            checkWin()
        }
    }
    
    func checkWin() {
        if (updateScore()) {
            finishButton.isHidden = false
        }
    }
    
    func updateScore() -> Bool {
        print("score: \(score)")
        if (score == 0) {
            gaugeLabel.text = "Nothing Selected!"
        }
        else if (score < 7) {
            gaugeLabel.text = "You're doing your score some horm(one)"
        }
        else if (score > 7 && score < 16) {
            gaugeLabel.text = "You're doing hormoneously well!"
        }
        else if (score == 16) {
            gaugeLabel.text = "You got all the hormones!"
            return true;
        }
        else if (score > 16 && score < 20) {
            gaugeLabel.text = "You're doing hormoneously well!"
        }
        else if (score > 19) {
            gaugeLabel.text = "You're doing your score some horm(one)"
        }
        return false;
    }
    
    
//    
//    func randomHormoneDrop() {
//        
//        let hormone = UIImage(named: "hormone")
//        
//        while (score < 20) {
//            
//            let imageView = UIImageView(image: hormone)
//            
//            let randX = arc4random_uniform(400)
//            let randY = arc4random_uniform(200)
//            
//            
//            imageView.frame = CGRect(x: Double(randX), y: Double(randY)+20, width: 15, height: 15)
//            view.addSubview(imageView)
//            
//            score += 1
//            
//        }
//    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
