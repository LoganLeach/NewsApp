//
//  ViewController.swift
//  NewsApp
//
//  Created by Chintankumar Subhashchandra Patel on 2023-11-27.
//

import UIKit

// This is the main view controll that is for handling the navigation between the storyboard
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // This navigates you to the language selection page
    @IBAction func btnGetStarted(_ sender: UIButton) {
        let  LanguageSelectionViewController = self.storyboard?.instantiateViewController(withIdentifier: "LanguageSelectionViewController") as! LanguageSelectionViewController
        self.navigationController?.pushViewController(LanguageSelectionViewController, animated: true)
    }
}

