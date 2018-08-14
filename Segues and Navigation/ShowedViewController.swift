//
//  ShowedViewController.swift
//  UIControlsTests
//
//  Created by Ignacio Nieto Carvajal on 17/5/17.
//  Copyright © 2017 Digital Leaves. All rights reserved.
//

import UIKit

class ShowedViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Destination VC: initialized via coder!")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("Destination VC: initialized via nibName/Bundle!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Destination VC: View Did Load!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Destination VC: view will appear!")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Destination VC: view did appear!")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Destination VC: view will disappear!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Destination VC: view did disappear!")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("Destination VC: view did layout subviews!")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
