//
//  TableViewCell.swift
//  saveMoney
//
//  Created by Gerson Arbrugaus on 16/11/18.
//  Copyright © 2018 Midsen. All rights reserved.
//

import UIKit

class DadosTableViewCell: UITableViewCell {

    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(dado: DadoPrincipal) {
        self.dataLabel.text = dado.descricao
        self.valorLabel.text = String(format: "R$ %.2f", dado.valor)
        self.dataLabel.text = dado.data
    }
    
}
