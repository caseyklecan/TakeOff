//
//  MoodSegue.swift
//  TakeOff
//
//  Created by Casey Klecan on 6/19/17.
//  Copyright © 2017 Casey Klecan. All rights reserved.
//

import UIKit

class MoodSegue: UIStoryboardSegue {
    
    override func perform() {
        // TODO
        let mood = (source as! QueryViewController).getMood()
        setDestinationValues(mood: mood)
//        super.perform()
        
    }
    
    private func setDestinationValues(mood: Mood) {
        var advice : String?
        switch (mood) {
        case .Good:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
        case .Bad:
            advice = AdviceEntries.getRandomEntryFor(key: "Bad", seen: [])
        case .Angry:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
        case .Grumpy:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
        case .Overwhelmed:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
        case .Exhausted:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
        default:
            break;
        }
        
        print(advice!)
        
//        (destination as! AdviceViewController).setHeader(text: "Here's some advice for you:")
        (destination as! AdviceViewController).setAdvice(text: advice!)
        animatePush()
        
    }
    
    // stolen from someone else 
    private func animatePush() {
        let toViewController = destination
        let fromViewController = source
        
        let containerView = fromViewController.view.superview
        let screenBounds = UIScreen.main.bounds
        
        let finalToFrame = screenBounds
        let finalFromFrame = finalToFrame.offsetBy(dx: -screenBounds.size.width, dy: 0)
        
        toViewController.view.frame = finalToFrame.offsetBy(dx: screenBounds.size.width, dy: 0)
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(withDuration: 0.5, animations: {
            toViewController.view.frame = finalToFrame
            fromViewController.view.frame = finalFromFrame
        }, completion: { finished in
            let fromVC = self.source
            let toVC = self.destination
            fromVC.present(toVC, animated: false, completion: nil)
        })
    }

}
