//
//  DetallesPeliculaController.swift
//  table view
//
//  Created by Alumno on 9/26/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPeliculaController: UIViewController {
    
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    
    var pelicula : Pelicula?
    var personaje : Personaje?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Titulo"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
            lblDirector.text = pelicula?.director
            lblAño.text = pelicula?.año
            lblGenero.text = pelicula?.genero
            //lblNombre.text = personaje?.nombre
            //lblInterprete.text = personaje?.interprete
        }
    }
}
