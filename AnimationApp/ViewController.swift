//
//  ViewController.swift
//  AnimationApp
//
//  Created by Maksim Grischenko on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
                
               
            }

        
    }
}

