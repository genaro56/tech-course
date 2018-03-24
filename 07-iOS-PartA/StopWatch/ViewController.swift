//
//  ViewController.swift
//  StopWatch
//
//  Created by Andres Altamirano on 3/23/18.
//  Copyright © 2018 AndresAltamirano. All rights reserved.
//

import UIKit
import YXWaveView

class ViewController: UIViewController {
    
    fileprivate var waterView: YXWaveView?
    
    var counterMs = 00
    var counterSec = 00
    var counterMin = 00
    var timer = Timer()
    var isPlaying = false

    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    @IBOutlet weak var msLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet var overView: UIView!
    
    @IBAction func startTimer(_ sender: Any) {
        // Start
        waterView!.start()
        
        if(isPlaying) {
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    @IBAction func pauseTimer(_ sender: Any) {
        // Stop
        waterView!.stop()
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
    }
    @IBAction func resetTimer(_ sender: Any) {
        // Stop
        waterView!.stop()
        
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        
        counterMs = 00
        counterSec = 00
        counterMin = 00
        
        minLabel.text = String(format: "%02d",counterMin)
        secLabel.text = String(format: "%02d",counterSec)
        msLabel.text = String(format: "%01d",counterMs)
    }
    
    @objc func UpdateTimer(){
        counterMs = counterMs + 1
        
        if(counterMs > 9){
            counterSec = counterSec + 1
            counterMs = 0
            if(counterSec > 59){
                counterMin = counterMin + 1
                counterSec = 0
            }
        }
        
        if(counterMin > 99){
            startButton.isEnabled = false
            pauseButton.isEnabled = false
            
            timer.invalidate()
            isPlaying = false
        }
        
        minLabel.text = String(format: "%02d",counterMin)
        secLabel.text = String(format: "%02d",counterSec)
        msLabel.text = String(format: "%01d",counterMs)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minLabel.text = String(format: "%02d",counterMin)
        secLabel.text = String(format: "%02d",counterSec)
        msLabel.text = String(format: "%01d",counterMs)
        pauseButton.isEnabled = false
        
        let frame = CGRect(x: 0, y: self.view.frame.height - 150, width: self.view.frame.width, height: 150)
        waterView = YXWaveView(frame: frame, color: UIColor.white)
        
        // real wave color
        waterView!.realWaveColor = UIColor(red:0.61, green:0.35, blue:0.71, alpha:1.0)
        
        // mask wave color
        waterView!.maskWaveColor = UIColor(red:0.93, green:0.94, blue:0.95, alpha:1.0)
        
        // wave speed (default: 0.6)
        waterView!.waveSpeed = 1.0
        
        // wave height (default: 5)
        waterView!.waveHeight = 20
        
        // wave curvature (default: 1.5)
        waterView!.waveCurvature = 1.5
        
        self.view.addSubview(waterView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

