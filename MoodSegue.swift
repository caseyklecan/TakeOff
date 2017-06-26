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
        let mood = (source as! QueryViewController).getMood()
        setDestinationValues(mood: mood)
        
    }
    
    private func setDestinationValues(mood: Mood) {
        var advice : String?
        var header : String?
        switch (mood) {
        case .Good:
            advice = AdviceEntries.getRandomEntryFor(key: "Good", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Good")
        case .Bad:
            advice = AdviceEntries.getRandomEntryFor(key: "Bad", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Bad")
        case .Angry:
            advice = AdviceEntries.getRandomEntryFor(key: "Angry", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Angry")
        case .Grumpy:
            advice = AdviceEntries.getRandomEntryFor(key: "Grumpy", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Grumpy")
        case .Stressed:
            advice = AdviceEntries.getRandomEntryFor(key: "Stressed", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Stressed")
        case .Exhausted:
            advice = AdviceEntries.getRandomEntryFor(key: "Exhausted", seen: [])
            header = AdviceEntries.getHeaderFor(key: "Exhausted")
        default:
            break;
        }
        
        (destination as! AdviceViewController).setHeader(text: header!)
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
