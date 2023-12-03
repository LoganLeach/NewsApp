//
//  ArticleViewController.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-30.
//

import UIKit

// This is the view controller for displaying the details of news articles
class ArticleViewController: UIViewController {

    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!

    var articleTitle: String?
    var articleDescription: String?
    var articleText: String?
    var articleImageName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = articleTitle
        descriptionLabel.text = articleDescription
        textLabel.text = articleText

            // Set the image for the article if available
        if let imageName = articleImageName {
            articleImageView.image = UIImage(named: imageName)
        }
    }
}

