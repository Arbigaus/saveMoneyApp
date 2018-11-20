//
//  LocalStorage.swift
//  saveMoney
//
//  Created by Gerson Arbrugaus on 16/11/18.
//  Copyright © 2018 Midsen. All rights reserved.
//

import Foundation

class LocalStorage {
    private let userDefaults = UserDefaults.standard
    
    static let shared = LocalStorage()
    
    private init(){}
    
    enum Keys{
        static let DADOS = "dados"
    }
    
    var dados : [DadoPrincipal] {
        
        get {
            return getDados()
        }
        set {
            saveDados(newValue)
        }
    }
    
    fileprivate func getDados() -> [DadoPrincipal] {
        
        var dados : [DadoPrincipal] = []
        if let data = userDefaults.data(forKey: Keys.DADOS) {
            dados = try! JSONDecoder().decode([DadoPrincipal].self, from: data)
        }
        
        return dados
    }
    
    fileprivate func saveDados(_ dados : [DadoPrincipal]) {
        
        if let encoded = try? JSONEncoder().encode(dados) {
            userDefaults.set(encoded, forKey: Keys.DADOS)
        }
        
    }
}
