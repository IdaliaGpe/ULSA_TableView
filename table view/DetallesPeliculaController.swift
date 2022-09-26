//
//  DetallesPeliculaController.swift
//  table view
//
//  Created by Alumno on 9/26/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPeliculaController: UIViewController {
    
    var pelicula : Pelicula?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Titulo"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
        }
    }
}
