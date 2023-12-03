//
//  RegionalEnglishView.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-27.
//

import UIKit

// This is the view controller for displaying reginal english articles
class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!

    struct Article {
        let title: String
        let description: String
        let text: String
        let imageName: String
    }

    // this is the array for the article title, description, text, and image
    let data: [Article] = [
        Article(title: "Title: Ontario Unveils Ambitious Green Energy Plan", description: "Description: Ontario announces a groundbreaking initiative to boost green energy production, aiming to reduce carbon emissions and promote sustainability.", text: "In a press conference held yesterday, Premier Johnson unveiled the province's ambitious plan to significantly increase investment in renewable energy sources, with a focus on wind and solar power. The comprehensive strategy includes the construction of new wind farms across rural Ontario and the installation of solar panels on public buildings. Premier Johnson emphasized the importance of transitioning to clean energy to combat climate change and create jobs in the green technology sector. The government's initiative aims to position Ontario as a leader in sustainable energy production. It includes incentives for private companies to invest in renewable projects and partnerships with research institutions to develop cutting-edge technologies. The plan also outlines a roadmap for the gradual phasing out of traditional energy sources, aligning with global efforts to achieve net-zero emissions. Moreover, the province is committed to fostering innovation in energy storage solutions, acknowledging the intermittent nature of renewable sources. Premier Johnson expressed confidence that this initiative would not only benefit the environment but also stimulate economic growth by creating a new wave of employment opportunities in manufacturing, installation, and maintenance of green energy infrastructure.", imageName: "EnglishArticle1"),
        Article(title: "Title: Tech Boom in Ontario Creates Job Opportunities", description: "Description: Ontario's tech sector experiences rapid growth, leading to increased job opportunities and economic development.", text: "Ontario's thriving technology industry is becoming a major driver of the province's economy, with numerous tech companies expanding their operations and hiring a substantial number of skilled workers. The government's commitment to fostering innovation through tax incentives and research grants has resulted in a surge of investment from both domestic and international tech giants. This boom is not only creating high-paying jobs but also positioning Ontario as a global tech hub. The influx of talent and capital has led to the establishment of innovation districts in major cities like Toronto and Waterloo, where tech startups and established companies collaborate in shared workspaces. Ontario's education system is also adapting to meet the demand for tech skills, with new programs and partnerships with industry leaders. As the tech ecosystem continues to evolve, Ontario is poised to become a leader in artificial intelligence, biotechnology, and clean technology. The province's commitment to sustainable growth ensures that the benefits of this tech boom extend beyond economic prosperity to include environmental and social advancements.", imageName: "EnglishArticle2"),
        Article(title: "Title: Ontario Schools Implement Innovative Learning Solutions", description: "Desciption: Education in Ontario takes a leap forward as schools adopt cutting-edge technology and innovative learning methods.", text: "Ontario's education system is undergoing a transformation with the introduction of state-of-the-art learning solutions, providing students and teachers with tools to enhance the educational experience. Virtual reality (VR) labs, interactive e-learning platforms, and collaborative online projects are being integrated into the curriculum. This initiative aims to prepare students for the digital age and provide them with the skills necessary for future success in a rapidly evolving world. The provincial government is investing heavily in professional development for educators to ensure they are equipped to leverage these new technologies effectively. Partnerships with tech companies and educational researchers are facilitating the development of customized learning materials and interactive lessons tailored to individual student needs. Parents and students alike are embracing these changes, noting the positive impact on engagement and academic performance. As Ontario's education system pioneers these innovative approaches, it sets an example for other regions seeking to adapt to the evolving landscape of education in the 21st century.", imageName: "EnglishArticle3"),
        Article(title: "Title: Ontario Launches Healthcare Modernization Initiative", description: "Description: Ontario embarks on a comprehensive healthcare modernization plan, aiming to improve patient care and accessibility.", text: "The provincial government has unveiled a bold initiative to modernize Ontario's healthcare system, focusing on digital health records, telemedicine, and increased funding for healthcare infrastructure. Patients can now access their medical records online, and virtual consultations with healthcare professionals have become more widely available. The government's commitment to investing in healthcare technology and facilities is expected to enhance the overall quality and efficiency of healthcare services in the province. The modernization plan also includes the development of a centralized healthcare data system, allowing for seamless information sharing among healthcare providers. This integration aims to reduce duplication of tests and streamline patient care processes, ultimately improving health outcomes for Ontarians. Additionally, the government is collaborating with tech companies to explore innovative solutions such as wearable health monitoring devices and predictive analytics for early disease detection. The emphasis on preventive care and technology-driven interventions aligns with global trends in healthcare modernization.", imageName: "EnglishArticle4"),
        Article(title: "Title: Ontario's Tourism Sector Rebounds with New Attractions", description: "Description: Ontario's tourism industry sees a resurgence with the opening of exciting new attractions, drawing visitors from across the province.", text: "Following a challenging period, Ontario's tourism sector is bouncing back with the introduction of captivating new attractions and experiences, providing a boost to local economies. Notable additions include a state-of-the-art amusement park, a cultural heritage trail showcasing the province's history, and eco-friendly resorts promoting sustainable tourism. These developments aim to attract visitors and rejuvenate Ontario's tourism sector, contributing to the economic recovery of the region. The provincial government, recognizing the economic importance of tourism, has implemented supportive policies and incentives to encourage the development of new tourist destinations. Local communities are actively participating in the revitalization efforts, offering unique events and festivals to showcase the diverse cultural heritage of Ontario. As international travel restrictions ease, Ontario's tourism industry is strategically positioning itself to welcome a surge of visitors seeking both adventure and relaxation. The synergy between public and private initiatives ensures that Ontario's tourism sector not only recovers but thrives in the post-pandemic era.", imageName: "EnglishArticle5"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    
    // For the view data source and delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell2
        cell.label.text = article.title
        cell.iconimageView.image = UIImage(named: article.imageName)
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



