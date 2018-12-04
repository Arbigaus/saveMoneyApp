//
//  AddViewController.swift
//  saveMoney
//
//  Created by Gerson Arbrugaus on 21/11/18.
//  Copyright © 2018 Midsen. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var tipoLabel: UILabel!
    @IBOutlet weak var tipoSwitch: UISwitch!
    @IBOutlet weak var descricaoTextField: UITextField!
    @IBOutlet weak var valorTextField: UITextField!
    @IBOutlet weak var tagsTextField: UITextField!
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var recorrenciaTextField: UITextField!
    @IBOutlet weak var addTagButton: UIButton!
    @IBOutlet weak var saveDataButton: UIButton!
    @IBOutlet weak var tagContainerView: UIView!
    
    var dado: DadoPrincipal = DadoPrincipal()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTag(_ sender: Any) {
        
        if let tagName = tagsTextField.text, tagName != ""{
            //descobrir se a tag ja existe no array
            
            self.dado.tags.append(tagName)
            self.tagsTextField.text = ""
            
//            print(self.dado.tags)
        }
        
    }
    
    @IBAction func salvaDados(_ sender: Any) {
        //Verificar se os campos estao preenchidos
        let valor = Float(valorTextField.text ?? "") ?? 0
        let descricao = descricaoTextField.text ?? ""
        let data = dataTextField.text ?? ""
        let recorrencia = Int(recorrenciaTextField.text ?? "0") ?? 0
        
        if descricao.isEmpty {
            print("Descricao invalida")
        } else if valor == 0 {
            print("Valor invalido")
            
        } else if data.isEmpty {
            print("Data invalida")
        } else if recorrencia == 0 {
            print("Recorrencia invalida")
        } else {
            self.dado.descricao = descricao
            self.descricaoTextField.text = ""
            self.dado.valor = valor
            self.valorTextField.text = ""
            self.dado.data = data
            self.dataTextField.text = ""
            self.dado.recorrencia = recorrencia
            self.recorrenciaTextField.text = ""
        }
        
        
        //em caso de algum campo estiver faltando, mostrar qual campo falta.
        //verificar se o array de tags esta vazio e avisar
        
        
        //apos dados preenchidos
        
        LocalStorage.shared.dados.append(self.dado)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
