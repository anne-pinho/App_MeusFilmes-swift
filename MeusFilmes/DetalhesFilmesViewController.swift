//
//  DetalhesFilmesViewController.swift
//  MeusFilmes
//
//  Created by Carol Pinho on 15/12/21.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.image
        tituloLabel.text = filme.title
        descricaoLabel.text = filme.description
        
    }
}
