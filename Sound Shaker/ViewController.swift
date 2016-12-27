//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Guilherme Henrique Crozariol on 2016-12-27.
//  Copyright © 2016 Lion. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            let fileLocation = Bundle.main.path(forResource: "whip_crack", ofType: "mp3")
            
            do {
                
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileLocation!))
                player.play()
                AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                    
                } catch {
                
                    // Error Message
                    
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
