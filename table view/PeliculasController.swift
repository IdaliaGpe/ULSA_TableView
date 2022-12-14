//
//  ViewController.swift
//  table view
//
//  Created by Alumno on 9/23/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    @IBOutlet weak var lblTvPeliculas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the vi
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1997", director: "James Cameron", genero: "Drama"))
        
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra los Montruos", año: "1973", director: "Jose Estrada", genero: "Comedia"))
        
        peliculas.append(Pelicula(titulo: "Vacaciones de Terror", año: "1989", director: "Rene Cardona", genero: "Terror"))
        
        peliculas[0].personajes.append(Personaje(nombre: "Jack Dawson", interprete: "Leonardo DiCaprio"))
        peliculas[0].personajes.append(Personaje(nombre: "Rose", interprete: "Kate Winslet"))
        peliculas[1].personajes.append(Personaje(nombre: "Chabelo", interprete: "Xavier López"))
        peliculas[1].personajes.append(Personaje(nombre: "Pepito", interprete: "Martín Ramos"))
        peliculas[2].personajes.append(Personaje(nombre: "Julio", interprete: "Pedro Fernandez"))
        peliculas[2].personajes.append(Personaje(nombre: "Paulina", interprete: "Gabriela Hassel"))
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as!
        CeldaPeliculaController
        
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblAño.text = peliculas[indexPath.row].año
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPeliculaController
        destino.pelicula = peliculas[lblTvPeliculas.indexPathForSelectedRow!.row]
    }
}

