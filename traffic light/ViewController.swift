//
//  ViewController.swift
//  traffic light
//
//  Created by Сергей Земсков on 29.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var changeColor = 1
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
       
    }


    fileprivate func updateUI() {
        switch changeColor {
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        default:
            view.backgroundColor = .white
        }
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        changeColor += 1
        if changeColor == 4 {changeColor = 1}
        updateUI()
    }

}
