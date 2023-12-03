//
//  InternationalEnglishView.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-27.
//

import UIKit

// This is for displaying the internation english news articles
class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!

    struct Article {
        let title: String
        let description: String
        let text: String
        let imageName: String
    }
    
// this is for the article image, title, description and text
    let data: [Article] = [
        Article(title: "Title: Global Summit Addresses Climate Change Crisis", description: "Description: World leaders gather for a landmark summit to address the escalating climate change crisis and commit to decisive, coordinated actions on a global scale.", text: "In a historic assembly, leaders from nations around the world convened to discuss and formulate strategies to combat the growing threat of climate change. The summit resulted in a comprehensive agreement outlining ambitious targets for reducing greenhouse gas emissions, promoting sustainable practices, and fostering international collaboration on climate research and technology. The agreement, named the Global Climate Accord, sets a bold roadmap for countries to transition to renewable energy sources, protect biodiversity, and adapt to the impacts of climate change. Funding mechanisms were established to assist developing nations in implementing green technologies and adapting to the changing climate. The summit's outcomes mark a turning point in the global fight against climate change, demonstrating the commitment of nations to work together for a sustainable future.", imageName: "EnglishArticle6"),
        Article(title: "Title: Breakthrough in Global Effort Against Pandemic", description: "Description: A major breakthrough in the global fight against the ongoing pandemic as scientists announce the successful development and distribution of a highly effective and accessible vaccine.", text: "International collaboration among scientists and pharmaceutical companies has resulted in the creation of a groundbreaking vaccine that promises to curb the spread of the virus. The global distribution effort is underway, aiming to provide equitable access to vaccinations for all nations, marking a significant milestone in the world's battle against the pandemic. The vaccine, named PanVax, has undergone rigorous testing and demonstrated unprecedented efficacy in preventing infection. A coordinated global vaccination campaign, supported by the World Health Organization (WHO) and various international health agencies, aims to inoculate populations worldwide. The breakthrough not only represents a triumph of science but also exemplifies the power of global cooperation in addressing shared challenges and ensuring the health and well-being of people across borders.", imageName: "EnglishArticle7"),
        Article(title: "Title: Trade Agreement Forges Stronger Ties Among Asian Nations", description: "Description: A new trade agreement strengthens economic ties among Asian nations, fostering increased collaboration and prosperity in the region.", text: "In a move to bolster economic cooperation, several Asian nations have signed a comprehensive trade agreement aimed at reducing trade barriers and promoting the free flow of goods and services. The pact is expected to stimulate economic growth, enhance regional stability, and solidify diplomatic ties among participating countries. The Asian Economic Partnership (AEP) removes tariffs on a wide range of goods, facilitates smoother customs procedures, and encourages investment and technological exchange. As a result, businesses across the region are poised to benefit from expanded market access and reduced costs. The AEP reflects a commitment to multilateralism and free trade, providing a counterbalance to protectionist trends seen elsewhere in the world. This landmark agreement signals a new era of collaboration and economic integration in Asia.", imageName: "EnglishArticle8"),
        Article(title: "Title: Global Space Exploration Consortium Announced", description: "Description: Nations around the world unite in a historic announcement, forming a global consortium for space exploration to pool resources, knowledge, and technologies.", text: "Recognizing the limitless potential of space exploration, countries from different continents have joined forces to establish a consortium dedicated to advancing human exploration beyond Earth. The collaboration aims to build a shared space station, conduct joint missions to celestial bodies, and foster international cooperation in the exploration and utilization of outer space. The International Space Exploration Consortium (ISEC) marks a new chapter in humanity's quest for knowledge and exploration. Member countries have committed to sharing technological expertise, research findings, and resources to propel collective space endeavors. This collaborative approach not only optimizes efficiency but also promotes peaceful cooperation in the pursuit of scientific discovery. ISEC represents a giant leap forward in humanity's efforts to explore the cosmos and expands the possibilities for international cooperation beyond our planet.", imageName: "EnglishArticle9"),
        Article(title: "Title: International Initiative Tackles Cybersecurity Threats", description: "Description: A united front against rising cybersecurity threats as a coalition of nations launches a comprehensive international initiative to safeguard digital infrastructure and data.", text: "In response to the escalating frequency and sophistication of cyberattacks, a global coalition has unveiled a far-reaching initiative to strengthen cybersecurity measures. The plan includes information sharing, joint research efforts, and the development of international standards to fortify digital defenses against emerging cyber threats. The collaborative approach seeks to ensure the security and integrity of digital systems on a global scale. The International Cybersecurity Alliance (ICA) brings together experts, policymakers, and industry leaders from participating nations to address the evolving challenges posed by cyber threats. By fostering a culture of information exchange and collective response, the initiative aims to thwart cybercriminal activities and protect critical digital infrastructure. The ICA underscores the importance of international cooperation in safeguarding the interconnected digital landscape and reinforces the idea that cybersecurity is a shared responsibility among nations.", imageName: "EnglishArticle10"),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

        // Table view data source and delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = article.title
        cell.iconImageView.image = UIImage(named: article.imageName)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = data[indexPath.row]
        // Navigates to the detailed article view
        let articleVC = self.storyboard?.instantiateViewController(withIdentifier: "ArticleViewController") as! ArticleViewController
        articleVC.articleTitle = article.title
        articleVC.articleDescription = article.description
        articleVC.articleText = article.text
        articleVC.articleImageName = article.imageName

        self.navigationController?.pushViewController(articleVC, animated: true)
    }
}




