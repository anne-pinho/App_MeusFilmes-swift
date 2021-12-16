//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Carol Pinho on 15/12/21.
//

import UIKit



class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(title:"007 - Spectre",
                      description: "James Bond chega à Cidade do México e está pronto para eliminar Marco Sciarra sem que o chef M saiba da missão. O caso leva à suspensão temporária do agente, que passa a ser constantemente vigiado pelo governo britânico graças a uma tecnologia implantada em seu corpo por Q. Na tentativa de despistar os inimigos e até mesmo alguns de seus parceiros de trabalho, ele se responsabiliza por ajudar a filha de um desafeto. Toda a situação o leva ao centro de uma temida organização denominada Spectre.",
                      image: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(title:"Star Wars",
                      description: "A queda de Darth Vader e do Império levou ao surgimento de uma nova força sombria: a Primeira Ordem. Eles procuram o jedi Luke Skywalker, desaparecido. A resistência tenta desesperadamente encontrá-lo antes para salvar a galáxia.",
                      image: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(title:"Impacto Mortal",
                      description: "Colt e John são pistoleiros e amantes ocasionais. Vivendo entre os encontros e desencontros, eles gostam mesmo é da adrenalina proporcionada pelas aventuras paralelas e pelos duelos perigosos de que participam na América do Sul. Tudo muda depois que o irmão dele é assassinado e eles acabam no meio de um jogo sujo e misterioso em que podem contar apenas um com o outro para sobreviver. Pelo menos até conseguirem localizar e se vingar do inimigo.",
                      image: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(title:"Deadpool",
                      description: "Wade Wilson é um ex-agente especial que passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada. Com a ajuda de aliados poderosos e um senso de humor mais desbocado e cínico do que nunca, o irreverente anti-herói usa habilidades e métodos violentos para se vingar do homem que quase acabou com a sua vida.",
                      image: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(title:"O Regresso",
                      description: "Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.",
                      image: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(title:"A Herdeira",
                      description: "Dina tem um dom sobrenatural e acaba sendo requisitada para fazer que um herdeiro confesse um crime, ao recusar, ela acaba presa e agora precisa descobrir quem é o culpado dos crimes para se salvar.",
                      image: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(title:"Caçadores de emoção",
                      description: "Após uma série de assaltos a bancos bizarros no sul da Califórnia, com os bandidos usando máscaras de vários ex-presidentes, o agente federal Johnny Utah se infiltra na gangue suspeita de ter cometido os crimes. O grupo de surfistas, liderado pelo carismático Bodhi, é viciado na adrenalina do roubo. Porém, Utah se apaixona por Tyler, uma das integrantes do grupo, e isso complica o seu senso de dever.",
                      image: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(title:"Regresso do mal",
                      description: "Assombrado por imagens assustadoras e mensagens inexplicáveis, um homem tenta descobrir o mistério por trás do desaparecimento de seu filho.", image: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(title:"Tarzan",
                      description: "Tarzan deixou as florestas da África para viver uma vida pacata como John Clayton III, o Lorde Greystoke, ao lado de sua esposa, Jane, na Inglaterra. Agora, ele é convidado para voltar ao Congo, onde passou a maior parte da sua vida, para servir como emissário de troca do Parlamento Britânico. Mas o que Tarzan não sabe é que está se dirigindo para uma armadilha mortal, fruto da vingança do capitão belga Leon Rom.",
                      image: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(title:"Hardcore: Missão Extrema", description: "Henry, um ciborgue recém-ressuscitado, precisa salvar sua mulher das garras de um tirano psicótico com poderes telecinéticos que lidera um exército de mercenários. Jimmy é a única esperança de Henry para realizar tal feito até o final do dia.",
                      image: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes [indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! FilmeCelula
        
        celula.filmeImageView.image = filme.image
        celula.tituloLabel.text = filme.title
        celula.descricaoLabel.text = filme.description
        
        celula.filmeImageView.layer.cornerRadius = 42
        //celula.filmeImageView.clipsToBounds = true

        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmesViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }
}

