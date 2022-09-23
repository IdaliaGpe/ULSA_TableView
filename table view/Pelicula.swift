//
//  pelicula.swift
//  table view
//
//  Created by Alumno on 9/23/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Pelicula {
    var titulo : String
    var año : String
    var director : String
    var genero : String

    init(titulo: String, año: String, director: String, genero: String) {
        self.titulo = titulo
        self.año = año
        self.director = director
        self.genero = genero
    }
}
