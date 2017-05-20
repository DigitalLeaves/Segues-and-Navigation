//
//  BootstrapStyleModalViewController.swift
//  Segues and Navigation
//
//  Created by Ignacio Nieto Carvajal on 19/5/17.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class BootstrapStyleModalViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    var message = "Hey there! I'm a bootstrap style modal view controller!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.layer.cornerRadius = 8.0
        containerView.layer.masksToBounds = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.messageLabel.text = message
    }
    
    @IBAction func closeThisViewController(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
