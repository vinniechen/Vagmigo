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
    
    @IBOutlet weak var popUpButton: UIButton!
    @IBOutlet weak var popUpLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpButton.isHidden = true
        popUpLabel.isHidden = true
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        button4.backgroundColor = UIColor.clear
        button5.backgroundColor = UIColor.clear
        button6.backgroundColor = UIColor.clear
        button7.backgroundColor = UIColor.clear
        button8.backgroundColor = UIColor.clear
        button9.backgroundColor = UIColor.clear
        button10.backgroundColor = UIColor.clear
        button11.backgroundColor = UIColor.clear
        button12.backgroundColor = UIColor.clear
        button13.backgroundColor = UIColor.clear
        button14.backgroundColor = UIColor.clear
        button15.backgroundColor = UIColor.clear
        button16.backgroundColor = UIColor.clear
        button17.backgroundColor = UIColor.clear
        button18.backgroundColor = UIColor.clear
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
    
    @IBAction func onButton2(_ sender: Any) {
        button2.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton3(_ sender: Any) {
        button3.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton4(_ sender: Any) {
        button4.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton5(_ sender: Any) {
        button5.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton6(_ sender: Any) {
        button6.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton7(_ sender: Any) {
        button7.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton8(_ sender: Any) {
        button8.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton9(_ sender: Any) {
        button9.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton10(_ sender: Any){
        button10.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton11(_ sender: Any){
        button11.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton12(_ sender: Any){
        button12.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton13(_ sender: Any){
        button13.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton14(_ sender: Any){
        button14.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton15(_ sender: Any){
        button15.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton16(_ sender: Any){
        button16.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton17(_ sender: Any){
        button17.backgroundColor = UIColor.red
        isDone()
    }
    
    @IBAction func onButton18(_ sender: Any){
        button18.backgroundColor = UIColor.red
        isDone()
    }
    
    
    func isDone() {
        if (totalCount == 17) {
            self.view.bringSubview(toFront: popUpLabel)
            self.view.bringSubview(toFront: popUpButton)
            popUpLabel.isHidden = false
            popUpButton.isHidden = false
            print("done!")
        }
        else {
            totalCount += 1
            randomHormoneP()
        }
        
    }
    
    func randomHormoneP() {
        let hormone = UIImage(named: "hormone2")
        let imageView = UIImageView(image: hormone)
        
        let randX = arc4random_uniform(400)
        let randY = arc4random_uniform(200)
        
        
        imageView.frame = CGRect(x: Double(randX), y: Double(randY)+150, width: 15, height: 15)
        view.addSubview(imageView)

    }
    
    @IBAction func onPress(_ sender: Any) {
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
