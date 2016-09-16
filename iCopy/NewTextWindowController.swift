//
//  NewTextWindowController.swift
//  iCopy
//
//  Created by Dallas Hoelscher on 8/5/16.
//  Copyright © 2016 Dallas Hoelscher. All rights reserved.
//

import Cocoa

class NewTextWindowController: NSWindowController, NSTextFieldDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    //Recieve the command
    @IBAction func textFieldChanged(_ sender: NSTextField) {
        
        let prefs: UserDefaults = UserDefaults.standard
        let string = sender.stringValue
            
        prefs.set(string, forKey: "copy")
        prefs.synchronize()
        
        
    }
    
    
}

