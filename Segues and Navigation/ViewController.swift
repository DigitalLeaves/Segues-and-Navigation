//
//  ViewController.swift
//  UIControlsTests
//
//  Created by Ignacio Nieto Carvajal on 11/5/17.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Origin VC: initialized via coder!")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("Origin VC: initialized via nibName/Bundle!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Origin VC: View Did Load!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Origin VC: view will appear!")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Origin VC: view did appear!")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Origin VC: view will disappear!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Origin VC: view did disappear!")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("Origin VC: view did layout subviews!")
    }

    @IBAction func segueToPushViewController(_ sender: UIButton) {
        self.performSegue(withIdentifier: "pushSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Origin VC: prepare for segue called!")
    }
    
    @IBAction func showBootstrapStyleModal(_ sender: Any) {
        if let bsmvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BootstrapStyleModalViewController") as? BootstrapStyleModalViewController {
            bsmvc.modalPresentationStyle = .overCurrentContext
            bsmvc.modalTransitionStyle = .crossDissolve
            bsmvc.providesPresentationContextTransitionStyle = true
            bsmvc.definesPresentationContext = true

            bsmvc.message = "Congratulations! You just learned how to trigger a bootstrap-style modal."
            
            self.present(bsmvc, animated: true, completion: nil)
        }
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) { print("Unwind segue to main screen activated!") }
}
