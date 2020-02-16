//
//  ViewController.swift
//  Signos
//
//  Created by Thiago Rosa Ataide on 19/02/19.
//  Copyright © 2019 Thiago Rosa Ataide. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significadosSignos:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        signos.append("touro")
        signos.append("virgem")
        signos.append("peixes")
        signos.append("gemeos")
        signos.append("leão")
        signos.append("escorpião")
        
        significadosSignos.append("é brabo e territorialista")
        significadosSignos.append("calmo")
        significadosSignos.append("peixes...")
        significadosSignos.append("gemeos...")
        significadosSignos.append("leão...")
        significadosSignos.append("escorpião...")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController.init(title: "Significado signo", message: significadosSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true,completion: nil)
        
    }


}

