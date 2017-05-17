//
//  ViewController.swift
//  UIControlsTests
//
//  Created by Ignacio Nieto Carvajal on 11/5/17.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) { print("Unwind segue to main screen activated!") }
}
