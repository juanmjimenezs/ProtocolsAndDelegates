//
//  FirstViewController.swift
//  TeoriaProtocolosDelegados
//
//  Created by Juan Manuel Jimenez Sanchez on 26/01/17.
//  Copyright © 2017 Juan Manuel Jimenez Sanchez. All rights reserved.
// 

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.delegate = self
    }

    func pressedTrue() {
        print("Ha pulsado verdadero")
    }
    
    func pressedFalse() {
        print("Ha pulsado false")
    }

}
