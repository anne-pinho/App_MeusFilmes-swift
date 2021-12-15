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
        
        filme = Filme(title: "filme 1", description: "descricao 1")
        filmes.append(filme)
        
        filme = Filme(title: "filme 2", description: "descricao 2")
        filmes.append(filme)
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
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        var conteudo = celula.defaultContentConfiguration()
        conteudo.text = filme.title
        celula.contentConfiguration = conteudo
        
        return celula
    }
}

