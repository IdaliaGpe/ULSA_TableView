//
//  DetallesPeliculaController.swift
//  table view
//
//  Created by Alumno on 9/26/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPeliculaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var lblTvPersonajes: UITableView!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    
    var pelicula : Pelicula?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Peliculas
        self.title = "Titulo"
        if pelicula != nil {
            self.title = pelicula?.titulo
            lblDirector.text = pelicula?.director
            lblAño.text = pelicula?.año
            lblGenero.text = pelicula?.genero
        }
        
    }
    
    //Personajes & Interpretes
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pelicula!.personajes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPersonajes") as! CeldaPersonajesController
        
        celda.lblNombre.text = pelicula?.personajes[indexPath.row].nombre
        celda.lblInterprete.text = pelicula?.personajes[indexPath.row].interprete
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
}
