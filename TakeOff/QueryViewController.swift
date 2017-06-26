//
//  ViewController.swift
//  TakeOff
//
//  Created by Casey Klecan on 6/19/17.
//  Copyright © 2017 Casey Klecan. All rights reserved.
//

import UIKit

enum Mood {
    case Good
    case Bad
    case Grumpy
    case Angry
    case Stressed
    case Exhausted
    case NoneSelected
}

class QueryViewController: UIViewController {
    
    private var currentMood = Mood.NoneSelected
    
    @IBOutlet weak var goodButton: UIButton!
    @IBOutlet weak var badButton: UIButton!
    @IBOutlet weak var grumpyButton: UIButton!
    @IBOutlet weak var angryButton: UIButton!
    @IBOutlet weak var stressButton: UIButton!
    @IBOutlet weak var exhaustedButton: UIButton!
    
//    let goodImage = UIImage(named: "../good.png")
//    let badImage = UIImage(named: "bad.png")
//    let grumpyImage = UIImage(named: "grumpy.png")
//    let angryImage = UIImage(named: "angry.png")
//    let stressedImage = UIImage(named: "stressed.png")
//    let exhaustedImage = UIImage(named: "exhausted.png")
    
    

    @IBAction func feelGood(_ sender: Any) {
//        print("yay!")
        currentMood = Mood.Good
    }
    
    @IBAction func feelBad(_ sender: Any) {
//        print("i'm sorry that sucks :'(")
        currentMood = Mood.Bad
    }
    
    @IBAction func feelGrumpy(_ sender: Any) {
//        print("ugh I know we all have days like that, sry bb")
        currentMood = Mood.Grumpy
    }
    
    
    @IBAction func feelMad(_ sender: Any) {
//        print("i hate that feeling boo, i'm sorry -- go punch a pillow or something")
        currentMood = Mood.Angry
    }
    
    @IBAction func feelSwamped(_ sender: Any) {
//        print("ok, take a deep breath, i'm here for u -- try a 2 minute meditation")
        currentMood = Mood.Stressed
    }
    
    @IBAction func feelTired(_ sender: Any) {
//        print("let's take naps ok? ok")
        currentMood = Mood.Exhausted
    }
    
    public func getMood() -> Mood {
        return currentMood
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
//        goodButton.setImage(goodImage, for: UIControlState.normal)
//        print("set button image")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

