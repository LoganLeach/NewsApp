//
//  InterntionalFrenchViewController.swift
//  NewsApp
//
//  Created by Logan Leach on 2023-11-30.
//

import UIKit

// View controller for displaying the international french news article
class InterntionalFrenchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!

    struct Article {
        let title: String
        let description: String
        let text: String
        let imageName: String
    }

    // Array for displaying the article image, title, description, and text
    let data: [Article] = [
        Article(title: "Title: Sommet Mondial sur la Crise Climatique", description: "Description: Les dirigeants mondiaux se réunissent pour un sommet historique afin de faire face à l'escalade de la crise climatique et de s'engager dans des actions décisives et coordonnées à l'échelle mondiale.", text: "Lors de cette réunion sans précédent, les dirigeants du monde entier ont discuté et formulé des stratégies pour lutter contre la menace croissante du changement climatique. Le sommet a abouti à un accord global définissant des objectifs ambitieux de réduction des émissions de gaz à effet de serre, de promotion de pratiques durables et de renforcement de la collaboration internationale en matière de recherche et de technologie climatique. L'accord, appelé Accord Mondial sur le Climat, trace une feuille de route audacieuse pour que les pays passent à des sources d'énergie renouvelable, protègent la biodiversité et s'adaptent aux impacts du changement climatique. Des mécanismes de financement ont été mis en place pour aider les nations en développement à mettre en œuvre des technologies vertes et à s'adapter aux changements climatiques. Les résultats du sommet marquent un tournant dans la lutte mondiale contre le changement climatique, démontrant l'engagement des nations à travailler ensemble pour un avenir durable.", imageName: "FrenchArticle6"),
        Article(title: "Title: Avancée Majeure dans l'Effort Mondial Contre la Pandémie", description: "Description: Une avancée majeure dans la lutte mondiale contre la pandémie alors que les scientifiques annoncent le développement et la distribution réussis d'un vaccin hautement efficace et accessible.", text: "La collaboration internationale entre scientifiques et entreprises pharmaceutiques a abouti à la création d'un vaccin révolutionnaire promettant de freiner la propagation du virus. L'effort mondial de distribution est en cours, visant à assurer un accès équitable aux vaccins pour toutes les nations, marquant une étape significative dans la lutte mondiale contre la pandémie. Le vaccin, nommé PanVax, a été soumis à des tests rigoureux et a démontré une efficacité inédite dans la prévention de l'infection. Une campagne mondiale de vaccination coordonnée, soutenue par l'Organisation mondiale de la santé (OMS) et diverses agences internationales de santé, vise à inoculer les populations du monde entier. La percée représente non seulement un triomphe de la science, mais illustre également la puissance de la coopération mondiale pour relever des défis communs et assurer la santé et le bien-être de tous, au-delà des frontières.", imageName: "FrenchArticle7"),
        Article(title: "Title: Accord Commercial Renforce les Liens Économiques Entre les Nations Asiatiques", description: "Description: Un nouvel accord commercial renforce les liens économiques entre les nations asiatiques, favorisant une collaboration accrue et la prospérité dans la région.", text: "Dans une démarche visant à renforcer la coopération économique, plusieurs nations asiatiques ont signé un accord commercial complet visant à réduire les barrières commerciales et à promouvoir la libre circulation des biens et des services. Le pacte devrait stimuler la croissance économique, renforcer la stabilité régionale et consolider les liens diplomatiques entre les pays participants. Le Partenariat Économique Asiatique (PEA) élimine les tarifs sur un large éventail de biens, facilite les procédures douanières et encourage l'investissement et l'échange technologique. En conséquence, les entreprises de la région sont sur le point de bénéficier d'un accès élargi aux marchés et de coûts réduits. Le PEA reflète un engagement envers le multilatéralisme et le libre-échange, fournissant un contrepoids aux tendances protectionnistes observées ailleurs dans le monde. Cet accord historique annonce une nouvelle ère de collaboration et d'intégration économique en Asie.", imageName: "FrenchArticle8"),
        Article(title: "Title: Consortium Mondial pour l'Exploration Spatiale Annoncé", description: "Description: Les nations du monde entier s'unissent dans une annonce historique, formant un consortium mondial pour l'exploration spatiale afin de mettre en commun ressources, connaissances et technologies.", text: "Reconnaissant le potentiel illimité de l'exploration spatiale, des pays de différents continents ont uni leurs forces pour créer un consortium dédié à l'avancement de l'exploration humaine au-delà de la Terre. La collaboration vise à construire une station spatiale partagée, à mener des missions conjointes vers des corps célestes et à favoriser la coopération internationale dans l'exploration et l'utilisation de l'espace extra-atmosphérique. Le Consortium International d'Exploration Spatiale (CIES) marque un nouveau chapitre dans la quête de l'humanité pour la connaissance et l'exploration. Les pays membres se sont engagés à partager leur expertise technologique, leurs découvertes de recherche et leurs ressources pour propulser les efforts spatiaux collectifs. Cette approche collaborative n'optimise pas seulement l'efficacité, mais promeut également la coopération pacifique dans la poursuite de la découverte scientifique. Le CIES représente un bond en avant dans les efforts de l'humanité pour explorer le cosmos et élargit les possibilités de coopération internationale au-delà de notre planète.", imageName: "FrenchArticle9"),
        Article(title: "Title: Initiative Internationale S'Attaque aux Menaces de Cybersécurité", description: "Description: Une coalition de nations lance une initiative internationale complète pour protéger les infrastructures numériques et les données face à la montée des menaces de cybersécurité.", text: "Face à la fréquence croissante et à la sophistication des cyberattaques, une coalition mondiale a dévoilé une initiative étendue visant à renforcer les mesures de cybersécurité. Le plan comprend le partage d'informations, des efforts de recherche conjoints et le développement de normes internationales pour renforcer les défenses numériques contre les menaces de cybersécurité émergentes. L'approche collaborative vise à assurer la sécurité et l'intégrité des systèmes numériques à l'échelle mondiale. L'Alliance Internationale de Cybersécurité (AIC) réunit des experts, des décideurs politiques et des leaders de l'industrie des nations participantes pour", imageName: "FrenchArticle10"),
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
        // Navigate to the article view
        let articleVC = self.storyboard?.instantiateViewController(withIdentifier: "FrenchArticleViewController") as! FrenchArticleViewController
        articleVC.articleTitle = article.title
        articleVC.articleDescription = article.description
        articleVC.articleText = article.text
        articleVC.articleImageName = article.imageName

        self.navigationController?.pushViewController(articleVC, animated: true)
    }
}
