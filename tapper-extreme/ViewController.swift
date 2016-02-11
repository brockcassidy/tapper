//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Brock Cassidy on 2/9/16.
//  Copyright © 2016 Brock Cassidy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    var maxTaps: Int = 5
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var pushBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    //Actions
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps = currentTaps + 1
        updateTapsLbl()
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {

        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logImg.hidden = true
            pushBtn.hidden = true
            howManyTapsTxt.hidden = true
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()

        }
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func restartGame() {
        maxTaps = 0
        currentTaps = 0
        howManyTapsTxt.text = ""
        logImg.hidden = false
        pushBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }}
}