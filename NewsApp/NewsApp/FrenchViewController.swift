//
//  FrenchViewController.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-30.
//

import UIKit

// View controller for navigation to the french section of the app
class FrenchViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Navigate to the regional french view when hitting the button
    
    @IBAction func btnRegionalFrench(_ sender: UIButton) {
        let RegionalFrenchViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegionalFrenchViewController") as! RegionalFrenchViewController
        self.navigationController?.pushViewController(RegionalFrenchViewController, animated: true)
    }
    
    // navigate to the international french view when hitting the button
    @IBAction func btnInternationalFrench(_ sender: UIButton) {
        let InterntionalFrenchViewController = self.storyboard?.instantiateViewController(withIdentifier: "InterntionalFrenchViewController") as! InterntionalFrenchViewController
        self.navigationController?.pushViewController(InterntionalFrenchViewController, animated: true)
    }
}
