//
//  ViewController.swift
//  saveMoney
//
//  Created by Gerson Arbrugaus on 14/11/18.
//  Copyright © 2018 Midsen. All rights reserved.
//

import UIKit

class TelaPrincipalViewController: UIViewController {

    @IBOutlet weak var headerMesesView: UIView!
    @IBOutlet weak var saldoContainerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var dados : [DadoPrincipal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.dados = LocalStorage.shared.dados
        
        print("DADOS \(self.dados.count)")
    }


}

//MARK: Configuração da View
extension TelaPrincipalViewController {
    
    func setupView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "DadosTableViewCell", bundle: nil), forCellReuseIdentifier: "DadosTableViewCell")
    }
}

extension TelaPrincipalViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dados.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DadosTableViewCell" , for: indexPath) as! DadosTableViewCell
        
        cell.configCell(dado: self.dados[indexPath.row])
        
        return cell
    }

}
