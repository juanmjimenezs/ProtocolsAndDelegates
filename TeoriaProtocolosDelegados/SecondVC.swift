//
//  SecondVC.swift
//  TeoriaProtocolosDelegados
//
//  Created by Juan Manuel Jimenez Sanchez on 26/01/17.
//  Copyright © 2017 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var delegate: SecondVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tapFromBack1(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        self.delegate?.sendSomething(data: "From 1")
    }
    
    @IBAction func tapFromBack2(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        self.delegate?.sendSomething(data: "From 2")
    }
}

protocol SecondVCDelegate {
    func sendSomething(data: String)
}
