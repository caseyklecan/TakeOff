//
//  BackSegue.swift
//  TakeOff
//
//  Created by Casey Klecan on 6/26/17.
//  Copyright © 2017 Casey Klecan. All rights reserved.
//

import UIKit

class BackSegue: UIStoryboardSegue {
    
    override func perform() {
        animatePush()
    }
    
    
    private func animatePush() {
        // setting which controller is where
        let toViewController = destination
        let fromViewController = source
        
        // the view that controls the "from" view & the screen bounds
        let containerView = fromViewController.view.superview
        let screenBounds = UIScreen.main.bounds
        
        // giving the final to frame the screen bounds that the screen has, putting the final from frame next to the final to frame
        let finalToFrame = screenBounds
        let finalFromFrame = finalToFrame.offsetBy(dx: screenBounds.size.width, dy: 0)
        
        // putting the "to" vc on the left side of the original vc, adding it as a subview of the container from before
        toViewController.view.frame = finalToFrame.offsetBy(dx: -screenBounds.size.width, dy: 0)
        containerView?.addSubview(toViewController.view)
        
        // animate it !! and then present it when you're done !!
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
