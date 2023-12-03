//
//  EnglishViewController.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-12-03.
//

import UIKit

class EnglishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Navigates you to the regional news
    @IBAction func btnRegionalNews(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    // Navigates you to the international news
    @IBAction func btnInternationalNews(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    

    
}
