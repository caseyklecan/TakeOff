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
    static var entries = [
        "Good": [
            "Use your good energy now to do something productive that you never feel like doing!",
            "Try to brighten someone else's day, it'll actually help brighten your own ever more :)",
            "Treat yourself! Do something kind to your body, like stretching or yoga or working out, or eat some delicious fresh fruit!"
        ], "Bad": [
            "I once saw a kitten sitten on top of my car. His name was Gary.",
            "Did you know that cat purrs are known to be anxiety and stress relieving? Maybe you should find a cat to pet.",
            "Visualization helps get people out of bad moods -- picture yourself out of this funk."
        ], "Grumpy": [
            "Try taking a walk around the office! It'll get your blood moving and will give you a fresh perspective on your workspace",
            "Are you hungry? Maybe find a healthy snack, like some fruit or nuts.",
            "Look at pictures of puppies and babies interacting online. That should make you smile."
        ], "Angry": [
            "Go home and punch a pillow!",
            "Think about the reason you're angry and think about pants-ing it",
            "Remember that karmic justice is totally a thing !! Your anger will not go unnoticed in the karmic cycle"
        ], "Overwhelmed": [
            "Try an emergency meditation by Calm (2, 5, or 10 minutes should do the trick)",
            "Tackling the big problems now will allow you to focus on the interesting, challenging problems later!",
            "Maybe it's time to walk away from the problem for a few minutes."
        ], "Exhausted": [
            "Go home, boo, take a nap!",
            "Caffeine might get you more wired, but if you have a sleep headache, it should help",
            "Your brain is its most creative when it's sleepy -- use this exhaustion as creative fuel!"
        ]]
    static var headers = ["Good": "That's great! Here's a tip to keep the good feeling going:", "Bad": "I'm sorry to hear that! Here's a little something to brighten your day:", "Grumpy":"Ugh I feel u, we all have days like that. Try this: ", "Angry":"UGH:", "Overwhelmed":"Take a deep breath and try this:", "Exhausted":"*yawn* maybe try one of these tricks:"];
    

    static func getRandomEntryFor(key: NSString, seen: Array<Int>) ->String? {
        let index = arc4random_uniform(UInt32(numEntries)) // will need to change back to var
        
        // todo -- make sure they've never seen it before 
        
        
        var array = entries[key as String]
        return array?[Int(index)]
    }
    
    static func getHeaderFor(key: NSString) -> String? {
        return headers[key as String]
    }
}
