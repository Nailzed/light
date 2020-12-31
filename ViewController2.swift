//
//  ViewController2.swift
//  traffic light
//
//  Created by Сергей Земсков on 30.12.2020.
//

import UIKit

class ViewController2: UIViewController {
        
        var isLightOn = true
            // переменная отслеживания состояния фонарика
    
        override var prefersStatusBarHidden: Bool {
            return true
            //убираем статусбар
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            updateUI()
           
        }


        fileprivate func updateUI() {
            view.backgroundColor = isLightOn ? .white : .black
            //функция управления фонариком
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        isLightOn.toggle()
        updateUI()
    }
}
            //функция отслеживания нажатий с логикой переключения состояния фонарика
