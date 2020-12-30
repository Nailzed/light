//
//  ViewController2.swift
//  traffic light
//
//  Created by Сергей Земсков on 30.12.2020.
//

import UIKit

class ViewController2: UIViewController {
        
        var isLightOn = true
        
        override var prefersStatusBarHidden: Bool {
            return true
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            updateUI()
           
        }


        fileprivate func updateUI() {
            view.backgroundColor = isLightOn ? .white : .black
            
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        isLightOn.toggle()
        updateUI()
    }
}
