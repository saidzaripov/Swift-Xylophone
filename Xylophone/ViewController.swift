//
//  ViewController.swift
//  Xylophone
//
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("Button pressed: \(sender.currentTitle ?? "Unknown")")
        playSound(soundName: sender.currentTitle!)
    }
    
    
    func playSound(soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav"){
            
            player = try! AVAudioPlayer(contentsOf: url)
            player.play()
            
        } else {
            print("Error: File not found for sound \(soundName)")
        }
        
                
    }
}


