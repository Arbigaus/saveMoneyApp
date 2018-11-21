//
//  DadoPrincipal.swift
//  saveMoney
//
//  Created by Gerson Arbrugaus on 14/11/18.
//  Copyright © 2018 Midsen. All rights reserved.
//

import Foundation

struct DadoPrincipal : Codable {
    
    var descricao : String
    var tags : [String]
    var valor : Float
    var data : String
    var tipo: Bool // despesa /  receita
    var id : Int
    
    init(descricao : String, tags : [String], valor : Float, data: String, id : Int, tipo: Bool) {
        
        self.descricao = descricao
        self.tags = tags
        self.valor = valor
        self.data = data
        self.id = id
        self.tipo = tipo
    }
    
    init() {
        
        self.descricao = ""
        self.tags = []
        self.valor = 0
        self.data = ""
        self.id = 0
        self.tipo = false
        
    }
    
}
