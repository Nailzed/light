//
//  ViewController3.swift
//  traffic light
//
//  Created by Сергей Земсков on 30.12.2020.
//

import UIKit
import AVFoundation

class ViewController3: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
        //убираем статус бар
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
    
    var isFlashOn: Bool = false
        //переменная управления состоянием фонарика
    func toggleFlash(on: Bool ) {
        guard let device = AVCaptureDevice.default(for: .video), device.hasTorch else { return }
        
        do {
            try device.lockForConfiguration()
            
            device.torchMode = on ? .on : .off
            if on {
                try device.setTorchModeOn(level: AVCaptureDevice.maxAvailableTorchLevel)
            }
            
            device.unlockForConfiguration()
        } catch {
            print("Error: \(error)")
        }
    }
            //функция инициализации фонарика
    
    func flashCondition(){
        if isFlashOn == true {toggleFlash(on: true)}
        else {toggleFlash(on: false)}
    }

            //функция управления фонариком
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
            isFlashOn.toggle()
            flashCondition()
        }
    }
            //функция отслеживания нажатий с логикой управления фонариком
