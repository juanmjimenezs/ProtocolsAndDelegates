//
//  FirstVC.swift
//  TeoriaProtocolosDelegados
//
//  Created by Juan Manuel Jimenez Sanchez on 26/01/17.
//  Copyright © 2017 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondVC") as! SecondVC
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.secondVC.delegate = self
    }

    @IBAction func goToNextVC(_ sender: UIButton) {
        self.present(self.secondVC, animated: true, completion: nil)
    }
}

extension FirstVC: SecondVCDelegate {
    func sendSomething(data: String) {
        self.label.text = data
    }
}
