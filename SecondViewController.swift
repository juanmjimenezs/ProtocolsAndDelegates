//
//  SecondViewController.swift
//  TeoriaProtocolosDelegados
//
//  Created by Juan Manuel Jimenez Sanchez on 26/01/17.
//  Copyright © 2017 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func pressedTrue()
    func pressedFalse()
}

class SecondViewController: UIViewController {
    
    var delegate: SecondViewControllerDelegate?
    
    @IBAction func pressedTrue(_ sender: UIButton) {
        self.delegate?.pressedTrue()
    }
    
    @IBAction func pressedFalse(_ sender: UIButton) {
        self.delegate?.pressedFalse()
    }

}
