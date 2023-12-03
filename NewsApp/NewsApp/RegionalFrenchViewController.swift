//
//  RegionalFrenchViewController.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-30.
//

import UIKit

// This is the view controller for displaying the regional french news articles
class RegionalFrenchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!

    struct Article {
        let title: String
        let description: String
        let text: String
        let imageName: String
    }

    // This is the array for displaying the article image, title, description, and text
    let data: [Article] = [
        Article(title: "Title: Nouveau Plan Vert Ambitieux en Ontario", description: "Description: L'Ontario annonce une initiative révolutionnaire visant à stimuler la production d'énergie verte, dans le but de réduire les émissions de carbone et de promouvoir la durabilité.", text: "Lors d'une conférence de presse tenue hier, le Premier ministre Johnson a dévoilé le nouveau plan ambitieux de la province visant à augmenter significativement les investissements dans les sources d'énergie renouvelable, en mettant l'accent sur l'énergie éolienne et solaire. La stratégie complète comprend la construction de nouveaux parcs éoliens dans les régions rurales de l'Ontario et l'installation de panneaux solaires sur les bâtiments publics. Le Premier ministre Johnson a souligné l'importance de la transition vers une énergie propre pour lutter contre le changement climatique et créer des emplois dans le secteur des technologies vertes.", imageName: "FrenchArticle1"),
        Article(title: "Title: Essor Technologique en Ontario Crée des Opportunités d'Emploi", description: "Description: Le secteur technologique de l'Ontario connaît une croissance rapide, entraînant une augmentation des opportunités d'emploi et du développement économique.", text: "L'industrie technologique florissante de l'Ontario devient un moteur majeur de l'économie de la province, avec de nombreuses entreprises technologiques qui élargissent leurs opérations et embauchent un nombre important de travailleurs qualifiés. L'engagement du gouvernement à favoriser l'innovation et à fournir des incitations aux start-ups technologiques a entraîné une vague d'investissements. Cette expansion est censée contribuer de manière significative à la reprise économique de l'Ontario et positionner la province comme un pôle mondial de la technologie.", imageName: "FrenchArticle2"),
        Article(title: "Title: Les Écoles de l'Ontario Adoptent des Solutions d'Apprentissage Innovantes", description: "Description: L'éducation en Ontario fait un bond en avant alors que les écoles adoptent des technologies de pointe et des méthodes d'apprentissage innovantes.", text: "Le système éducatif de l'Ontario est en pleine transformation avec l'introduction de solutions d'apprentissage de pointe, offrant aux étudiants et aux enseignants des outils pour améliorer l'expérience éducative. Des laboratoires de réalité virtuelle (RV), des plateformes d'apprentissage interactives et des projets collaboratifs en ligne sont intégrés au programme. Cette initiative vise à préparer les étudiants à l'ère numérique et à leur fournir les compétences nécessaires pour réussir dans un monde en évolution rapide.", imageName: "FrenchArticle3"),
        Article(title: "Title: Lancement d'une Initiative de Modernisation des Soins de Santé en Ontario", description: "Description: L'Ontario lance un plan complet de modernisation des soins de santé, visant à améliorer les soins aux patients et l'accessibilité.", text: "Le gouvernement provincial a dévoilé une initiative audacieuse visant à moderniser le système de santé de l'Ontario, en mettant l'accent sur les dossiers de santé numériques, la télémédecine et une augmentation du financement pour l'infrastructure de santé. Les patients peuvent désormais accéder à leurs dossiers médicaux en ligne, et les consultations virtuelles avec des professionnels de la santé sont devenues plus largement disponibles. L'engagement du gouvernement à investir dans la technologie médicale et les installations de santé devrait améliorer la qualité globale et l'efficacité des services de santé dans la province. Le plan de modernisation comprend également le développement d'un système centralisé de données de santé, permettant un partage d'informations transparent entre les fournisseurs de soins de santé. Cette intégration vise à réduire la duplication des tests et à rationaliser les processus de soins aux patients, améliorant ainsi les résultats de santé pour les Ontariens. De plus, le gouvernement collabore avec des entreprises technologiques pour explorer des solutions innovantes telles que des dispositifs de surveillance de la santé portables et des analyses prédictives pour la détection précoce des maladies. L'accent mis sur les soins préventifs et les interventions basées sur la technologie s'aligne sur les tendances mondiales en matière de modernisation des soins de santé.", imageName: "FrenchArticle4"),
        Article(title: "Title: Le Secteur du Tourisme en Ontario Rebondit avec de Nouvelles Attractions", description: "Description: Le secteur du tourisme de l'Ontario connaît une résurgence avec l'ouverture de nouvelles attractions passionnantes, attirant des visiteurs de toute la province.", text: "Après une période difficile, le secteur du tourisme de l'Ontario reprend vie avec l'introduction de nouvelles attractions captivantes et d'expériences, stimulant les économies locales. Parmi les ajouts notables, on compte un parc d'attractions ultramoderne, un sentier du patrimoine culturel mettant en valeur l'histoire de la province, et des centres de villégiature écologiques favorisant le tourisme durable. Ces développements visent à attirer les visiteurs et à revitaliser le secteur du tourisme en Ontario, contribuant ainsi à la reprise économique de la région. Le gouvernement provincial, reconnaissant l'importance économique du tourisme, a mis en place des politiques favorables et des incitations pour encourager le développement de nouvelles destinations touristiques. Les communautés locales participent activement aux efforts de revitalisation, en proposant des événements et des festivals uniques pour mettre en valeur le patrimoine culturel diversifié de l'Ontario. À mesure que les restrictions de voyage international s'assouplissent, le secteur du tourisme de l'Ontario se positionne stratégiquement pour accueillir une vague de visiteurs en quête d'aventure et de détente. La synergie entre les initiatives publiques et privées garantit que le secteur du tourisme de l'Ontario non seulement se redresse, mais prospère dans l'ère post-pandémique.", imageName: "FrenchArticle5"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FrenchTableViewCell
        cell.label.text = article.title
        cell.iconImageView.image = UIImage(named: article.imageName)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = data[indexPath.row]
        // Navigate to the article vie
        let articleVC = self.storyboard?.instantiateViewController(withIdentifier: "FrenchArticleViewController") as! FrenchArticleViewController
        articleVC.articleTitle = article.title
        articleVC.articleDescription = article.description
        articleVC.articleText = article.text
        articleVC.articleImageName = article.imageName

        self.navigationController?.pushViewController(articleVC, animated: true)
    }
}
