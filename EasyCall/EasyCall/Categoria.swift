//
//  Categoria.swift
//  EasyCall
//
//  Created by Mm on 10/13/19.
//  Copyright © 2019 Mm. All rights reserved.
//

import UIKit

class Categoria: Codable {
    
    //prueba

    var icon: String!
    var nombre: String!
    
    init(nombre: String, icon: String) {
        self.nombre = nombre
        self.icon = icon
    }
    
}
