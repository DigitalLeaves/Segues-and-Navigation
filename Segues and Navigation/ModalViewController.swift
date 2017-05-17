//
//  ModalViewController.swift
//  UIControlsTests
//
//  Created by Ignacio Nieto Carvajal on 17/5/17.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    
}
