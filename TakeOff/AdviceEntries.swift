//
//  AdviceEntries.swift
//  TakeOff
//
//  Created by Casey Klecan on 6/19/17.
//  Copyright © 2017 Casey Klecan. All rights reserved.
//

import UIKit

class AdviceEntries: NSObject {
    
    static var numEntries = 3
    static var entries = ["Good":["take a walk!", "take a hike!", "relax!"], "Bad":["take a nap", "take a break", "plan a vacation"]]
    

    static func getRandomEntryFor(key: NSString, seen: Array<Int>) ->String? {
        let index = arc4random_uniform(UInt32(numEntries)) // will need to change back to var
        
        // todo -- make sure they've never seen it before 
        
        
        var array = entries[key as String]
        return array?[Int(index)]
    }
}
