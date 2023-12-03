//
//  LanguageSelectionViewController.swift
//  NewsApp
//
//  Created by Chintankumar Subhashchandra Patel on 2023-12-03.
//

import UIKit

class LanguageSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func btnEnglishView(_ sender: UIButton) {
        let EnglishViewController = self.storyboard?.instantiateViewController(withIdentifier: "EnglishViewController") as! EnglishViewController
        self.navigationController?.pushViewController(EnglishViewController, animated: true)
        
    }
    
    @IBAction func btnFrenchView(_ sender: UIButton) {
        let FrenchViewController = self.storyboard?.instantiateViewController(withIdentifier: "FrenchViewController") as! FrenchViewController
        self.navigationController?.pushViewController(FrenchViewController, animated: true)
    }
}
