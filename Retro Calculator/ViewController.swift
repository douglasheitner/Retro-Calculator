//
//  ViewController.swift
//  Retro Calculator
//
//  Created by Douglas on 1/20/17.
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do{
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        
        }
        catch let err as NSError{
          
            print(err.debugDescription)
        }
    }
    
    @IBAction func numberPressed(sender: UIButton){
        playerSound()
    }
    
    func playerSound(){
        
        if btnSound.isPlaying {
            btnSound.stop()
        }
        
        btnSound.play()
    }

    
    
    

}

