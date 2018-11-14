//
//  CustomWindow.swift
//  DarkDemo
//
//  Created by Szabolcs Toth on 11/13/18.
//  Copyright © 2018 purzelbaum.hu. All rights reserved.
//

import Cocoa

class CustomWindow: NSWindowController {
    
    @IBOutlet var modeIndicator: NSToolbarItem!
    
    var windowColor = NSColor(named: "WindowColor") {
        didSet {
            configureWindowAppearance()
        }
    }

    // Here we define our two images for the toolbar
    var modeIndicatorImage = NSImage(named: "ToolbarIndicator") {
        didSet {
            configureWindowAppearance()
        }
    }

    override func windowDidLoad() {
        super.windowDidLoad()
  
        self.configureWindowAppearance()
    }
    
    private func configureWindowAppearance() {
        if let window = window {
            if let view = window.contentView {
                view.wantsLayer = true
                
                window.titleVisibility = .hidden
                window.titlebarAppearsTransparent = true
                window.backgroundColor = windowColor
                
                // Setting the relevant image to the ImageView
                modeIndicator.image = modeIndicatorImage
                
            }
        }
    }
    
}
