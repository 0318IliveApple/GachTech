//
//  ResultViewController.swift
//  GachTech
//
//  Created by 中嶋裕也 on 2018/04/11.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    var monsterArray:[UIImage]!
    
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let number = Int(arc4random_uniform(10))
        
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!]
        
        monsterImageView.image = monsterArray[number]
        if number == 9{
            haikeiImageView.image=UIImage(named: "bg_gold.png")
        }else if number > 6{
            haikeiImageView.image=UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image=UIImage(named: "bg_blue.png")
        }

        // Do any additional setup after loading the view.
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
