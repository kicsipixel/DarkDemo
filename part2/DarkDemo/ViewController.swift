//
//  ViewController.swift
//  DarkDemo
//
//  Created by Szabolcs Toth on 11/13/18.
//  Copyright © 2018 purzelbaum.hu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    private var appearanceChangeObservation: NSKeyValueObservation?

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appearanceChangeObservation = view.observe(\.effectiveAppearance) { [weak self]  _, _  in
           self?.updateImageViewAppearance()
        }
    }
    
    private func updateImageViewAppearance() {

        switch view.effectiveAppearance.bestMatch(from: [.aqua, .darkAqua]) {
            case NSAppearance.Name.aqua:
                imageView.image = DarkDemo.imageOfLight
            case NSAppearance.Name.darkAqua:
                imageView.image = DarkDemo.imageOfDark
            default:
                imageView.image = DarkDemo.imageOfLight
        }
    }
    
}
