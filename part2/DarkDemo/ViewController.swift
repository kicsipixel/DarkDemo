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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appearanceChangeObservation = view.observe(\.effectiveAppearance) { [weak self]  _, _  in
           self?.updateImageViewAppearance()
        }
    }
    
    private func updateImageViewAppearance() {
    
        switch view.effectiveAppearance.bestMatch(from: [.aqua, .darkAqua]) {
            case NSAppearance.Name.aqua:
            print("aq")
            case NSAppearance.Name.darkAqua:
            print("da")
            default:
            print("lofasz")
        }
    }
    
}
