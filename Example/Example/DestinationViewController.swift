//
//  DestinationViewController.swift
//  Example
//
//  Created by phimage on 24/07/16.
//  Copyright © 2016 phimage. All rights reserved.
//

import Cocoa
import CustomSegue

class DestinationViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Dismiss after defined time interval
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(DestinationViewController.dismissNotAmbigous(_:)), userInfo: nil, repeats: false)
    }


    @objc func dismissNotAmbigous(_ sender: AnyObject?) {
        self.dismiss(sender)
    }


    var segue: ReplaceWindowContentSegue?
    @IBAction func dismissSegue(_ sender: AnyObject?) {
         segue?.unperform()
    }
}

// We could prevent to pass event to source controller views by doing nothing here
/*
class DestinationView: NSView {
    override func mouseDown(theEvent: NSEvent) {
    }

    override func acceptsFirstMouse(theEvent: NSEvent?) -> Bool {
        return true
    }
}
*/
