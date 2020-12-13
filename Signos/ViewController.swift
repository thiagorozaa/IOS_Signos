//
//  ViewController.swift
//  Signos
//
//  Created by Thiago Rosa Ataide on 03/11/20.
//  Copyright © 2020 Thiago Rosa Ataide. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significados:[String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        signos.append("Virgem")
        signos.append("Touro")
        signos.append("Peixes")
        signos.append("Escorpiao")
        signos.append("Leao")
        signos.append("Cancer")
        signos.append("Gemeos")
        signos.append("Aquario")
        signos.append("Sagitario")
        signos.append("Aries")
        signos.append("Libra")
        signos.append("Capricornio")
        
        significados.append("Virgem aaaaaaaa")
        significados.append("Touro bbbbbbbb")
        significados.append("Peixes ccccccccc")
        significados.append("Escorpiao dddddd")
        significados.append("Leao eeeeeee")
        significados.append("Cancer fffffff")
        significados.append("Gemeos ggggggg")
        significados.append("Aquario hhhhhh")
        significados.append("Sagitario iiiiii")
        significados.append("Aries jjjjjjjj")
        significados.append("Libra kkkkkkk")
        significados.append("Capricornio lllllll")
        
        
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
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significados[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
    }


}

